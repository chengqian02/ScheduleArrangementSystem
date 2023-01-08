package com.arrange.springboot_nba.controller.AdminController;

import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

/**
 * @create 2022-04-14 22:19
 */
@Controller
public class ProfileController {

    @Autowired
    UsersService usersService;

    @GetMapping("/selfprofile")
    public String selfprofile(HttpSession session, Model model){
        String username = (String)session.getAttribute("loginUser");
        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name",username);
        Users user = usersService.getOne(queryWrapper);
        model.addAttribute("userinfo",user);
        return "/admin/selfProfile";
    }
}
