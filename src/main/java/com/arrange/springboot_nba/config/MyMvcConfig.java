package com.arrange.springboot_nba.config;

import com.arrange.springboot_nba.component.LoginHandlerInterceptor;
import com.arrange.springboot_nba.component.MyLocaleResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @create 2022-02-23 14:14
 */
@Configuration
public class MyMvcConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        super.addViewControllers(registry);
//        registry.addViewController("/atguigu").setViewName("success");
        registry.addViewController("/").setViewName("/login/login");
        registry.addViewController("/login.html").setViewName("/login/login");
        registry.addViewController("/main_user.html").setViewName("index_user");
        registry.addViewController("/main_admin.html").setViewName("index_admin");
        registry.addViewController("/forgot-password").setViewName("/login/forgot-password.html");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration interceptorRegistration = registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**");
        interceptorRegistration.excludePathPatterns("/user_login","/login.html","/","/login/**","/assets/**","/webjars/**","/public/**","/META-INF/resources/**","/registerinfo","/forgetPasswordInfo");
        interceptorRegistration.excludePathPatterns("/register");
        interceptorRegistration.excludePathPatterns("/forgot-password");
    }

    //    @Bean
//    public  WebMvcConfigurerAdapter webMvcConfigurerAdapter(){
//        WebMvcConfigurerAdapter adapter = new WebMvcConfigurerAdapter() {
//            @Override
//            public void addViewControllers(ViewControllerRegistry registry) {
//                registry.addViewController("/").setViewName("");
//            }
//        };
//        return adapter;
//    }

    @Bean
    public LocaleResolver localeResolver(){

        return new MyLocaleResolver();
    }
}
