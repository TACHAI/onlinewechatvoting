package com.chaoxing.onlinewechatvoting.config;

import com.github.xiaoymin.knife4j.spring.annotations.EnableKnife4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Swagger2配置类
 * @ClassName Swagger2
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2019-06-25
 */
@Configuration
@EnableSwagger2
@EnableConfigurationProperties(SwaggerSettings.class)
@EnableKnife4j
public class Swagger2 {

    @Autowired
    private SwaggerSettings swaggerSettings;

    @Bean
    public Docket createRestApi(){
        return new Docket(DocumentationType.SWAGGER_2)
                // todo 生产取消swagger
                .enable(swaggerSettings.getEnable())
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.chaoxing.onlinewechatvoting.controller"))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        Contact contact = new Contact("胡振昌", "", "tc1206966083@gmail.com");
        return new ApiInfoBuilder()
                .title("景德镇市文化馆在线投票平台RESTful APIs")
                .description("更多关注http://www.baidu.com")
                .termsOfServiceUrl("http://www.baidu.com")
                .contact(contact)
                .version("1.0")
                .build();
    }
}
