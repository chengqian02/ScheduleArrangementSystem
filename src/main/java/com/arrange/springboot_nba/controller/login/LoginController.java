package com.arrange.springboot_nba.controller.login;


import com.arrange.springboot_nba.entities.Users;

import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @create 2022-02-25 21:33
 */
@Controller
public class LoginController {

    @Autowired
    UsersService usersService;

    @PostMapping(value = "/user_login")
    public String login(@RequestParam("signin-email") String username,
                        @RequestParam("signin-password") String password,
                        Map<String, Object> map, HttpSession session){
        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name",username);
        Users users = usersService.getOne(queryWrapper);
        if(users.getUserName().equals(username) && users.getUserPassword().equals(password)){
            if(users.getPower() == 0){
                session.setAttribute("loginId", users.getUserId());
                session.setAttribute("loginUser",username);
                session.setAttribute("Loginpower",0);
                return "redirect:/main_admin.html";
            }else {

                session.setAttribute("loginId", users.getUserId());
                session.setAttribute("loginUser",username);
                session.setAttribute("Loginpower",1);
                return "redirect:/main_user.html";
            }

        }else {
            map.put("msg", "用户密码错误");
            return "/login/login";
        }
    }


    @GetMapping("/register")
    public String register(){
        return "/login/register";
    }

    @PostMapping("/registerinfo")
    public String registerinfo(Users users,Map<String, Object> map){
        users.setPower(1);
        boolean b = usersService.saveOrUpdate(users);
        map.put("msg", "注册成功，请登录");
        return "/login/login";
    }

    @PostMapping("/forgetPasswordInfo")
    public String forgetPasswordInfo(@RequestParam(value = "name") String username,@RequestParam(value = "password") String userpassword,Map<String, Object> map){
        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name",username);
        try {
            Users one = usersService.getOne(queryWrapper);
            one.setUserPassword(userpassword);
            boolean b = usersService.saveOrUpdate(one);
            if(b){
                map.put("msg", "密码修改成功，请重新登录");
                return "/login/login";
            }else {
                map.put("msg", "密码修改失败");
                return "/login/login";
            }
        }catch (Exception e){
            System.out.println(e);
            map.put("msg", "修改密码失败，用户不存在");
            return "/login/login";
        }

    }



    @GetMapping("/logout")
    public String logout(HttpSession session, HttpServletRequest request){
        Object user = request.getSession().getAttribute("loginUser");
        if(user != null){
            session.invalidate();
        }
        return "redirect:/login.html";
    }
}
