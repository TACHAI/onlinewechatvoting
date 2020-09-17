package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.WechatUser.IwechatUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName WxController
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-05-11 15:06
 */
@Api(value = "微信用户信息接口",tags ={"微信用户信息接口"})
@RestController
@RequestMapping("/api/wx/")
public class WxController {

    @Autowired
    private IwechatUserService iwechatUserService;

    @ApiOperation("获取用户信息接口")
    @PostMapping("getWxUser")
    public ServerResponse<WechatUser> getWxUser(String code) {
        return iwechatUserService.getWxUser(code);
    }

}

