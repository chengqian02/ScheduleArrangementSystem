package com.arrange.springboot_nba.controller.users;

import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @create 2022-03-03 18:52
 */
@Controller
public class userAddController {
    @Autowired
    UsersService usersService;

    @GetMapping("/addUser")
    public String addUser(){
        return "/user/addUser";
    }

    @PostMapping("/addUsers")
    public String addUsers(Users users){
        usersService.save(users);
        return "redirect:/userList";
    }

}
