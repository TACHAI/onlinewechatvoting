package com.chaoxing.onlinewechatvoting.controller.back;



import com.chaoxing.onlinewechatvoting.bean.po.User;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.user.impl.UserServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * @ClassName UserController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2019-12-30
 */
@Slf4j
@Api(tags = "LoginController|用户登录模块")
@RequestMapping("/api/back/user/")
@RestController
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    // 登录
    @ApiOperation(value = "用户登录接口")
    @PostMapping("login")
    public ServerResponse<User> login(HttpSession session, String username, String password){


        log.info("username:{},password:{}",username, password);
        System.out.println("username:"+username+"password:"+password);
        User user = userService.login(username, password).getData();
        if (user != null) {
            session.setAttribute("USER", user);
        }
        return userService.login(username, password);
    }

    @ApiOperation(value = "修改密码")
    @PostMapping("updatePassword")
    public ServerResponse<String> updatePassword( String username, String passwordold, String passwordNew) {
        User user = userService.login(username, passwordold).getData();
        if (user != null) {
//            session.setAttribute("USER", user);
        }else {
            return ServerResponse.createByErrorMessage("用户名或密码错误");
        }
        if (StringUtils.isNotBlank(passwordNew)) {
//            String pwd = MD5Util.MD5(passwordNew);
//            log.info("密码"+pwd);
            user.setPassword(passwordNew);
        }
        return userService.updateUser(user);
    }

    @PostMapping("exit")
    public ServerResponse<String> exit(String userId){
//        User user = (User) session.getAttribute("USER");
//        if (user != null) {
//            session.removeAttribute("USER");
//        }
        return ServerResponse.createBySuccessMessage("退出成功");

//        return ServerResponse.createByErrorMessage("session失效");
    }
}
