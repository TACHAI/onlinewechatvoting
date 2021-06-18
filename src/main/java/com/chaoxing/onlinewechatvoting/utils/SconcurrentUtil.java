package com.chaoxing.onlinewechatvoting.utils;

import com.google.gson.JsonObject;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName SconcurrentUtil
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2021-06-02 8:43
 */
@Component
public class SconcurrentUtil {
    // token 会过期
    private static final Map<String,String> tokenEntity=new HashMap<>();
    // expire 会过期
    private static final Map<String,String> ticketEntity=new HashMap<>();

    //请求微信接口获取token
    public static String getAccessToken(){
        String tokenStr = new Date().getTime()+"";

        tokenEntity.put("access_token",tokenStr);
        // 取出access_token的有效期

        String expires = new Date().getTime()+"";
        tokenEntity.put("expires_in",expires.substring(0,10));
        return tokenStr;
    }

    // 从map中获取token
    public static String getToken(){
        String wxToken = "";
        try {
            wxToken= tokenEntity.get("access_token");
            if("".equals(wxToken)||wxToken==null){
                wxToken =getAccessToken();
            }
            String expires = tokenEntity.get("expires_in");
            // token 过期
            if(new Date().getTime()>(Long.parseLong(expires)*1000+70*1000)){
                wxToken = getAccessToken();
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return wxToken;
    }


    public static void main(String[] args) throws InterruptedException {

    }

}
