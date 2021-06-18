package com.chaoxing.onlinewechatvoting.controller.fore;

import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.service.WechatUser.IwechatUserService;
import com.chaoxing.onlinewechatvoting.service.WechatUser.impl.WechatUserServiceImpl;
import com.chaoxing.onlinewechatvoting.utils.JSSDKUtil;
import com.chaoxing.onlinewechatvoting.utils.SconcurrentUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

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


    @ApiOperation("验证用户是否关注微信公众号")
    @PostMapping("checkAttention")
    public ServerResponse <String> checkAttention(String openId){
        return iwechatUserService.checkAttention(openId);
    }

    @PostMapping("getUrl")
    public ServerResponse <Map<String, String>> getUrl(String url){


        Map<String,String> map = iwechatUserService.getSignature(url);


        return ServerResponse.createBySuccess(map);
    }


    @GetMapping("test")
    public ServerResponse<String> get(){
        return ServerResponse.createBySuccess(SconcurrentUtil.getToken());
    }

}

