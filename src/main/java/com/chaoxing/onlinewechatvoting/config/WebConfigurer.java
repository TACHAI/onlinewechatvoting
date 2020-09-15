package com.chaoxing.onlinewechatvoting.config;

import com.chaoxing.onlinewechatvoting.config.VaidParam.CheckParamsInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @ClassName WebConfigurer
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2019-06-26
 */
@ComponentScan
@Configuration
public class WebConfigurer implements WebMvcConfigurer {

    private static String localDir;


    @Value("${file.localDir}")
    public void setLocalDir(String localDir){
        WebConfigurer.localDir=localDir;
    }


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/static/**").addResourceLocations("file:///"+ localDir+"/");
    }

    //增加校验拦截器
    CheckParamsInterceptor checkSourceInterceptor = new CheckParamsInterceptor();
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 这个地方可以定义拦截器的具体的路径
        registry.addInterceptor(checkSourceInterceptor).addPathPatterns("/**");
    }
}
