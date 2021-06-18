package com.chaoxing.onlinewechatvoting.utils;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Create by tachai on 2020-03-02 16:16
 * gitHub https://github.com/TACHAI
 * Email tc1206966083@gmail.com
 */
@Component
public class JSSDKUtil {
    //从微信后台拿到APPID和APPSECRET 并封装为常量

    private static String APPID;
    private static String APPSECRET;

    @Value("${wechat.APPID}")
    public void setAppId(String APPID){
        JSSDKUtil.APPID=APPID;
    }

    @Value("${wechat.APPSECRET}")
    public void setSecret(String APPSECRET){
        JSSDKUtil.APPSECRET=APPSECRET;
    }


    // token 会过期
    private static final Map<String,String> tokenEntity=new HashMap<>();
    // expire 会过期
    private static final Map<String,String> ticketEntity=new HashMap<>();

    private static int sum;

    public static final  String TEMURL="";

    private static final String ACCESS_TOKEN_URL="https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";


    //请求微信接口获取token
    public static String getAccessToken(String appid,String appsecret){
        String tokenStr = "";
        String url = ACCESS_TOKEN_URL.replace("APPID",appid).replace("APPSECRET",appsecret);
        try {
            JsonObject jsonObject = JSSDKUtil.doGetStr(url);
            System.out.println(Thread.currentThread()+"==token:"+jsonObject.toString());
            System.out.println(Thread.currentThread()+"==sum:"+sum);
            if(jsonObject!=null){
                // 取出access_token

                tokenStr = jsonObject.get("access_token").getAsString();
                tokenEntity.put("access_token",tokenStr);
                // 取出access_token的有效期
                String expiresIn = jsonObject.get("expires_in").getAsString();
                String expires = new Date().getTime()+"";
                tokenEntity.put("expires_in",expires.substring(0,10));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return tokenStr;
    }

    // 从map中获取token
    public static String getToken(){
        String wxToken = "";
        try {
            wxToken= tokenEntity.get("access_token");
            if("".equals(wxToken)||wxToken==null){
                wxToken =JSSDKUtil.getAccessToken(JSSDKUtil.APPID,JSSDKUtil.APPSECRET);
                sum=0;
            }
            String expires = tokenEntity.get("expires_in");
            // token 过期
            if(new Date().getTime()>(Long.parseLong(expires)*1000+7000*1000)){
                wxToken = JSSDKUtil.getAccessToken(JSSDKUtil.APPID,JSSDKUtil.APPSECRET);
                sum++;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return wxToken;
    }

    public static String getTicket(){
        String ticket = "";
        try {
            ticket= ticketEntity.get("ticket");
            if("".equals(ticket)||ticket==null){
                ticket =JSSDKUtil.getTicketByURL();
            }
            String expires = ticketEntity.get("expires_in");
            // token 过期
            if(new Date().getTime()>(Long.parseLong(expires)+7000*1000)){
                ticket = JSSDKUtil.getTicketByURL();
            }
        }catch (Exception e){
            e.printStackTrace();
            ticket = JSSDKUtil.getTicketByURL();
        }

        return ticket;
    }

    // 获取ticket
    public static String getTicketByURL() {
        String accessToken = getToken();
        // 网页授权接口
        String GetPageAccessTokenUrl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+accessToken+"&type=jsapi";
        HttpClient client = null;
        String ticket = "";
        int expires_in = 0;
        try {
            JsonObject jsonObject = JSSDKUtil.doGetStr(GetPageAccessTokenUrl);
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
    public static Map<String,String> getSignature(String url) {
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

    // 使用post请求
    /**
     * @param url 传入的url
     * @param outStr  post传入的参数
     * @return  返回post得到的json对象
     */
    public static JsonObject doPostStr(String url, String outStr)throws IOException{
        // 获取DefaultHttpClient请求
        HttpClient client = HttpClients.createDefault();
        // 使用post 发送请求
        HttpPost httpPost = new HttpPost(url);
        httpPost.setEntity(new StringEntity(outStr,"UTF-8"));
        // 使用HttpRestponse接收client 执行httpost的结果
        HttpResponse response = client.execute(httpPost);
        // HttpEntity转为字符串类型
        String result = EntityUtils.toString(response.getEntity(),"UTF-8");

        return new Gson().fromJson(result, JsonObject.class);
    }

}
