package com.chaoxing.onlinewechatvoting.service.WechatUser;

import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;

/**
 * @ClassName IwechatUserService
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-17 17:19
 */
public interface IwechatUserService {
    // 获取用户信息
    ServerResponse<WechatUser> getWxUser(String code);
    // 查询是否关注公众号
    ServerResponse<String> checkAttention(String openid);
    // 发送微信模板消息
    ServerResponse<String> postMessage(Integer workId,String openid,String msg);
}
