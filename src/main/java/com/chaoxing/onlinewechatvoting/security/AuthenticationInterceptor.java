package com.chaoxing.onlinewechatvoting.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.chaoxing.onlinewechatvoting.bean.po.User;
import com.chaoxing.onlinewechatvoting.common.BadRequestException;
import com.chaoxing.onlinewechatvoting.service.user.IuserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * @ClassName AuthenticationInterceptor
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-01-09
 */
public class AuthenticationInterceptor implements HandlerInterceptor {
    @Autowired
    private IuserService userService;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object object){
        String token = httpServletRequest.getHeader("Authorization");
        // 如果不是映射到方法直接通过
        if(!(object instanceof HandlerMethod)){
            return true;
        }
        HandlerMethod handlerMethod = (HandlerMethod) object;
        Method method =handlerMethod.getMethod();
        // todo 研究一下
        //检查是否有passtoken注释，有则跳过认证
        if(method.isAnnotationPresent(PassToken.class)){
            PassToken passToken = method.getAnnotation(PassToken.class);
            if(passToken.required()){
                return true;
            }
        }

        // 检查有么有需要用户权限的注解
        if(method.isAnnotationPresent(UserLoginToken.class)){
            UserLoginToken userLoginToken = method.getAnnotation(UserLoginToken.class);
            if(userLoginToken.required()){
                // 执行认证
                if(token == null){
                    throw new BadRequestException("无token,请重新登录");
                }
                // 获取token中的user  id
                String userId;
                try {
                    userId = JWT.decode(token).getAudience().get(0);
                }catch (JWTDecodeException j){
                    throw new RuntimeException("401");
                }

                User user = userService.selectById(Integer.parseInt(userId)).getData();
                if(user==null){
                    throw new BadRequestException("用户不存在，请重新登录");
                }
                // 验证token
                JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(user.getPassword())).build();
                try {
                    jwtVerifier.verify(token);
                }catch (JWTVerificationException e){
                    throw new RuntimeException("401");
                }
                return true;
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e)throws Exception {

    }
}
