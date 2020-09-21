package com.chaoxing.onlinewechatvoting.service.WechatUser.impl;

import com.alibaba.fastjson.JSONObject;
import com.chaoxing.onlinewechatvoting.bean.po.WechatToken;
import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.WechatTokenMapper;
import com.chaoxing.onlinewechatvoting.dao.WechatUserMapper;
import com.chaoxing.onlinewechatvoting.service.WechatUser.IwechatUserService;
import com.chaoxing.onlinewechatvoting.utils.DateUtil;
import com.chaoxing.onlinewechatvoting.utils.HttpUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName WechatUserServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-17 17:21
 */
@Slf4j
@Service("iwechatUserService")
public class WechatUserServiceImpl implements IwechatUserService {
    private static String APPID;
    private static String APPSECRET;

    @Autowired
    private WechatTokenMapper wechatTokenMapper;

    @Value("${wechat.APPID}")
    public void setAppId(String APPID){
        WechatUserServiceImpl.APPID=APPID;
    }

    @Value("${wechat.APPSECRET}")
    public void setSecret(String APPSECRET){
        WechatUserServiceImpl.APPSECRET=APPSECRET;
    }

    @Autowired
    private WechatUserMapper wechatUserMapper;

    @Override
    public ServerResponse<WechatUser> getWxUser(String code) {
        Map<String, String> map = getOauthToken(code);
        String openId = map.get("openId");
        String access_token = map.get("access_token");
        WechatUser wxUser = wechatUserMapper.selectByOpenId(openId);
        if(wxUser == null){
            //根据access_token来获取用户信息
            String userInfoUrl = "https://api.weixin.qq.com/sns/userinfo?access_token="+access_token+"&openid="+openId+"&lang=zh_CN";
            String userInfo = HttpUtil.doGet(userInfoUrl).getData();
            wxUser = new WechatUser();
            JSONObject userJson = JSONObject.parseObject(userInfo);
            wxUser.setPickname(userJson.getString("nickname"));
            wxUser.setProvince(userJson.getString("province"));
            wxUser.setSex(userJson.getString("sex"));
            wxUser.setHeadimgurl(userJson.getString("headimgurl"));
            wxUser.setOpenid(userJson.getString("openid"));
            wxUser.setCountry(userJson.getString("country"));
            wxUser.setCreateTime(new Date());
            wechatUserMapper.insert(wxUser);
        }
        wxUser = wechatUserMapper.selectByOpenId(openId);

        return ServerResponse.createBySuccess(wxUser);    }

    @Override
    public ServerResponse<String> checkAttention(String openid) {
        String access_token = getBaseToken();
        if(access_token!=null){
            //https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN
            String userInfoUrl = "https://api.weixin.qq.com/cgi-bin/user/info?access_token="+access_token+"&openid="+openid+"&lang=zh_CN";
            String userInfo = HttpUtil.doGet(userInfoUrl).getData();
            JSONObject userJson = JSONObject.parseObject(userInfo);
            Integer subscribe= userJson.getInteger("subscribe");
            if(1==subscribe){
                return ServerResponse.createBySuccessMessage("已关注");
            } else {
               return ServerResponse.createByErrorMessage("用户未关注");
            }

        }
        return ServerResponse.createByErrorMessage("发生了错误：");
    }


    private String getBaseToken(){
         WechatToken tokenPO =wechatTokenMapper.selectByPrimaryKey(1);
         if(checkExpire(tokenPO.getUpdateTime())){
             return tokenPO.getToken();
         }
        String tokenUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="+APPID+"&secret="+APPSECRET;
        ServerResponse<String> response = HttpUtil.doGet(tokenUrl);
        if(response.getStatus()!=200){
            log.error("WechatUserServiceImpl.getBaseToken:{}",response.getMsg());
        }
        String tokenRes = response.getData();

        JSONObject jsonObject = JSONObject.parseObject(tokenRes);
        String access_token = jsonObject.getString("access_token");

        return access_token;
    }

    private Map<String,String> getOauthToken(String code){
        String tokenUrl = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+APPID+"&secret="+APPSECRET+"&code="+code+"&grant_type=authorization_code";
        ServerResponse<String> response = HttpUtil.doGet(tokenUrl);
        if(response.getStatus()!=200){
            log.error("WechatUserServiceImpl.getOauthToken:{}",response.getMsg());
        }
        String tokenRes = response.getData();

        JSONObject jsonObject = JSONObject.parseObject(tokenRes);
        String access_token = jsonObject.getString("access_token");
        String openId = jsonObject.getString("openid");
        Map<String,String> map = new HashMap<>();
        map.put("access_token",access_token);
        map.put("openId",openId);
        return map;
    }

    // 2个小时过期
    private Boolean checkExpire(Date date){
        Date now = new Date();
        Long nowTime  = now.getTime();
        Long dateTime = date.getTime();
        if(dateTime+7000000>nowTime){
            return true;
        }
        return false;
    }

//    public static void main(String[] args) {
//        String date = "2020-09-21 08:56:00";
//        Date  date1 = DateUtil.strToDate(date,DateUtil.DEFAULT_FORMAT);
//
//        System.out.println(checkExpire(date1));
//    }
}

