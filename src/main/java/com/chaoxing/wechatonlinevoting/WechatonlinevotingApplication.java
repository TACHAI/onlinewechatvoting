package com.chaoxing.wechatonlinevoting;

import com.github.pagehelper.PageHelper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

import java.util.Properties;
@MapperScan(value = "com.chaoxing.onlinewechatvoting.dao")
@SpringBootApplication
public class WechatonlinevotingApplication extends SpringBootServletInitializer {

    /**
     *  配置mybatis 分页插件pageHelper
     */
    @Bean
    public PageHelper pageHelper(){
        PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("offsetAsPageNum","true");
        properties.setProperty("rowBoundsWithCount","true");
        properties.setProperty("reasonable","true");
        /**
         * 配置mysql 方言
         */
        properties.setProperty("dialect","mysql");
        pageHelper.setProperties(properties);
        return pageHelper;
    }

    public static void main(String[] args) {
        SpringApplication.run(WechatonlinevotingApplication.class, args);
    }

    /**
     * 打成war包使用
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder){
        /**
         * 此处Application.class 替换为springboot默认启动类
         */
        return builder.sources(WechatonlinevotingApplication.class);
    }
}
