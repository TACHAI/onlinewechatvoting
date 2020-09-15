package com.chaoxing.onlinewechatvoting.config.VaidParam;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.List;

/**
 * 参数检查注解拦截器
 * @ClassName CheckParamsInterceptor
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 10:59
 */
public class CheckParamsInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        List<String> list = getParamsName((HandlerMethod) handler);
        for (String s : list) {
            String parameter = request.getParameter(s);
            if (StringUtils.isEmpty(parameter)){
                JSONObject jsonObject = new JSONObject();
                //这个地方是定义缺少参数或者参数为空的时候返回的数据
                jsonObject.put("status", 203);
                jsonObject.put("msg", "缺少必要的"+s+"值");
                response.setHeader("Content-type", "application/json;charset=UTF-8");
                response.setHeader("Access-Control-Allow-Origin", "*");//跨域
                response.getWriter().write(jsonObject.toJSONString());
                return false;
            }
        }
        return true;
    }

    /**
     * 获取使用了该注解的参数名称
     */
    private List getParamsName(HandlerMethod handlerMethod) {
        Parameter[] parameters = handlerMethod.getMethod().getParameters();
        List<String> list = new ArrayList<>();
        for (Parameter parameter : parameters) {
            //判断这个参数时候被加入了 ParamsNotNull. 的注解
            //.isAnnotationPresent()  这个方法可以看一下
            if(parameter.isAnnotationPresent(ParamsNotNull.class)){
                list.add(parameter.getName());
            }
        }
        return list;
    }
}
