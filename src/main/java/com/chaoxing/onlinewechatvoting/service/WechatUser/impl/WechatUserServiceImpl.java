package com.chaoxing.onlinewechatvoting.service.WechatUser.impl;

import com.alibaba.fastjson.JSONObject;
import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.bean.po.WechatToken;
import com.chaoxing.onlinewechatvoting.bean.po.WechatUser;
import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.ActivityMapper;
import com.chaoxing.onlinewechatvoting.dao.WechatTokenMapper;
import com.chaoxing.onlinewechatvoting.dao.WechatUserMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkMapper;
import com.chaoxing.onlinewechatvoting.service.WechatUser.IwechatUserService;
import com.chaoxing.onlinewechatvoting.utils.HttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @ClassName WechatUserServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-17 17:21
 */
@Slf4j
@Service("iwechatUserService")
public class WechatUserServiceImpl implements IwechatUserService {


    @Autowired
    private WechatTokenMapper wechatTokenMapper;
    @Autowired
    private WechatUserMapper wechatUserMapper;
    @Autowired
    private WorkMapper workMapper;
    @Autowired
    private ActivityMapper activityMapper;

    private static String APPID;
    private static String APPSECRET;
    private static String TEMPLATEID;


    @Value("${wechat.APPID}")
    public void setAppId(String APPID){
        WechatUserServiceImpl.APPID=APPID;
    }

    @Value("${wechat.APPSECRET}")
    public void setSecret(String APPSECRET){
        WechatUserServiceImpl.APPSECRET=APPSECRET;
    }

    @Value("${wechat.TEMPLATEID}")
    public void setTemplateId(String TEMPLATEID){
        WechatUserServiceImpl.TEMPLATEID=TEMPLATEID;
    }

    // expire 会过期
    private static final Map<String,String> ticketEntity=new HashMap<>();


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

    /** 发送模板消息**/
    @Override
    public ServerResponse<String> postMessage(Integer workId,String openid, String msg) {
        String access_token = getBaseToken();
        Work work = workMapper.selectByPrimaryKey(workId);
        Activity activity = activityMapper.selectByPrimaryKey(work.getActivityId());
        // https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token="+access_token;

        // 构造模板消息
        Map<String,Object> map = new HashMap<>();
        map.put("touser",openid);
        map.put("template_id",TEMPLATEID);
        Map<String,Object> data=new HashMap<> ();
        Map<String,String> first=new HashMap<> ();
        first.put("value","作品审核未通过通知");
        data.put("first",first);
        //keyword1 :活动名称
        Map<String,String> keyword1=new HashMap<> ();
        keyword1.put("value", activity.getName());
        data.put("keyword1",keyword1);
        //keyword2 :作品名称
        Map<String,String> keyword2=new HashMap<> ();
        String workName = work.getAuthor()+"的视频";
        if(StringUtils.isNotBlank(work.getName())){
            workName=work.getName();
        }
        keyword2.put("value",workName);
        data.put("keyword2",keyword2);

        Map<String,String> remark=new HashMap<> ();
        remark.put("value", "欢迎修改后提交");
        data.put("remark",remark);

        map.put("data",data);

        String jsonStr = JSONObject.toJSONString(map);
        Integer status = HttpUtil.doPost(url,jsonStr).getStatus();
        if(status==200){
            work.setMessage(msg);
            workMapper.updateByPrimaryKeySelective(work);
        }
        return HttpUtil.doPost(url,jsonStr);
    }

    /** 获得基础的token**/
    public  String getBaseToken(){
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
        // 更新token
        tokenPO.setUpdateTime(new Date());
        tokenPO.setToken(access_token);
        wechatTokenMapper.updateByPrimaryKeySelective(tokenPO);
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


    public  String getTicket(){
        String ticket = "";
        try {
            ticket= ticketEntity.get("ticket");
            if("".equals(ticket)||ticket==null){
                ticket =getTicketByURL();
            }
            String expires = ticketEntity.get("expires_in");
            // token 过期
            if(new Date().getTime()>(Long.parseLong(expires)+7000*1000)){
                ticket = getTicketByURL();
            }
        }catch (Exception e){
            e.printStackTrace();
            ticket = getTicketByURL();
        }

        return ticket;
    }


    // 获取ticket
    public  String getTicketByURL() {
        String accessToken = getBaseToken();
        // 网页授权接口
        String GetPageAccessTokenUrl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+accessToken+"&type=jsapi";
        HttpClient client = null;
        String ticket = "";
        int expires_in = 0;
        try {
            JsonObject jsonObject = doGetStr(GetPageAccessTokenUrl);
            System.out.println("ticket:"+jsonObject.toString());
            if(jsonObject!=null){
                // 取出access_token
                ticket = jsonObject.get("ticket").getAsString();
                ticketEntity.put("ticket",ticket);
                String expires = new Date().getTime()+"";
                ticketEntity.put("expires_in",expires.substring(0,10));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return ticket;
    }



    // 获取Signature
    @Override
    public  Map<String,String> getSignature(String url) {
        String signature = "";
        //获取noncestr
        String noncestr = UUID.randomUUID().toString();
        String timestamp = Long.toString(System.currentTimeMillis() / 1000);
        //获取jspai_ticket
        String jsapi_ticket = getTicket();
        //将四个数据进行组合，传给SHA1进行加密
        String str = "jsapi_ticket=" + jsapi_ticket +
                "&noncestr=" + noncestr +
                "&timestamp=" + timestamp +
                "&url=" + url;

        //sha1加密
        signature = SHA1(str);

        Map<String,String> map  = new HashMap<>();
        map.put("appId",APPID);
        map.put("timestamp",timestamp);
        map.put("nonceStr",noncestr);
        map.put("signature",signature);

        return map;
    }


    public static String SHA1(String str) {
        try {
            MessageDigest digest = MessageDigest
                    .getInstance("SHA-1"); //如果是SHA加密只需要将"SHA-1"改成"SHA"即可
            digest.update(str.getBytes());
            byte messageDigest[] = digest.digest();
            // Create Hex String
            StringBuffer hexStr = new StringBuffer();
            // 字节数组转换为 十六进制 数
            for (int i = 0; i < messageDigest.length; i++) {
                String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);
                if (shaHex.length() < 2) {
                    hexStr.append(0);
                }
                hexStr.append(shaHex);
            }
            return hexStr.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    //从微信后台拿到APPID和APPSECRET 并封装为常量
    /**
     * @param url  传入的地址
     * @return   返回get返回的json对象
     */
    private static JsonObject  doGetStr(String url) throws IOException {
        // 获取defaultHttpClient请求
        HttpClient client = HttpClients.createDefault();
        // HttpGet将使用Get方式发送请求URL
        HttpGet httpGet = new HttpGet(url);
        JsonObject jsonObject = null;
        // 使用HttpResponse 接收client 执行httpGet的结果
        HttpResponse response = client.execute(httpGet);
        // 从response中获取结果，类型为HttpEntity


        HttpEntity entity = response.getEntity();
        if(entity != null){
            // httpEntity转为字符串类型
            String result = EntityUtils.toString(entity,"UTF-8");
            System.out.println("result:"+result);
            jsonObject = new Gson().fromJson(result, JsonObject.class);
            System.out.println("token"+jsonObject.toString());

        }
        return jsonObject;
    }

//    public static void main(String[] args) {
//        // 构造模板消息
//        Map<String,Object> map = new HashMap<>();
//        map.put("touser","OPENID");
//        map.put("template_id","ngqIpbwh8bUfcSsECmogfXcV14J0tQlEpBO27izEYtY");
//        Map<String,Object> data=new HashMap<> ();
//        Map<String,String> first=new HashMap<> ();
//        first.put("value","作品审核未通过通知");
//        data.put("first",first);
//        //keyword1 :活动名称
//        Map<String,String> keyword1=new HashMap<> ();
//        keyword1.put("value", "喜迎中秋-国庆");
//        data.put("keyword1",keyword1);
//        //keyword2 :作品名称
//        Map<String,String> keyword2=new HashMap<> ();
//        keyword2.put("value","张三的作品");
//        data.put("keyword2",keyword2);
//        Map<String,String> remark=new HashMap<> ();
//        remark.put("value", "欢迎修改后提交");
//        data.put("remark",remark);
//
//        map.put("data",data);
//
//        String jsonStr = JSONObject.toJSONString(map);
//        System.out.println(jsonStr);
//    }
}

