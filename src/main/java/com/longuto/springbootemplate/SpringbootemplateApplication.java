package com.longuto.springbootemplate;

import com.longuto.springbootemplate.common.config.TemplateProperties;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@MapperScan("com.longuto.springbootemplate.dao")
@EnableConfigurationProperties({TemplateProperties.class})
@SpringBootApplication
@EnableTransactionManagement
@EnableCaching
@EnableAsync
public class SpringbootemplateApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootemplateApplication.class, args);
    }

}
