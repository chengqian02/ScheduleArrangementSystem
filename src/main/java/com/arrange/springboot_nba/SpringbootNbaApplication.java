package com.arrange.springboot_nba;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@MapperScan("com.arrange.springboot_nba.mapper")
@SpringBootApplication
public class SpringbootNbaApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringbootNbaApplication.class, args);
    }

}
