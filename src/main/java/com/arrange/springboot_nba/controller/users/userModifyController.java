package com.arrange.springboot_nba.controller.users;

import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @create 2022-03-03 23:32
 */
@Controller
public class userModifyController {
    @Autowired
    UsersService usersService;

    @GetMapping("/user/modify/{id}")
    public String ModifyUser(@PathVariable("id") long id,
                             Model model){
        Users users = usersService.getById(id);
        model.addAttribute("users",users);
        return "/user/userModify";
    }

    @PostMapping("/usersModify")
    public String usersModify(Users users){
        boolean update = usersService.updateById(users);
        return "redirect:/userList";
    }
}
