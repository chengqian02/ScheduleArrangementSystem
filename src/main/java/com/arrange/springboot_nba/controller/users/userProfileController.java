package com.arrange.springboot_nba.controller.AdminController;

import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @create 2022-04-14 22:19
 */
@Controller
public class userProfileController {

    @Autowired
    UsersService usersService;

    @GetMapping("/userselfprofile")
    public String selfprofile(HttpSession session, Model model){
        String username = (String)session.getAttribute("loginUser");
        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_name",username);
        Users user = usersService.getOne(queryWrapper);
        model.addAttribute("userinfo",user);
        return "/user/selfProfile";
    }

    @GetMapping("/selfInfoModify/{id}")
    public String selfInfoModify(@PathVariable("id") long id, Model model, Map<String, Object> map){
        Users infoModify = usersService.getById(id);
        model.addAttribute("users",infoModify);
        map.put("selfmodify","用户修改");
        return "/user/selfinfoModify";
    }


    @PostMapping("/userselfModify")
    public String usersModify(Users users){
        boolean update = usersService.updateById(users);
        return "redirect:/userselfprofile";
    }

}
