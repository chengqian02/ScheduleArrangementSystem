package com.arrange.springboot_nba.controller.users;

import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @create 2022-03-02 22:25
 */
@Controller
public class userListController {

    @Autowired
    UsersService usersService;

    @RequestMapping("/userList")
    public String getUserList(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn){
        List<Users> list = usersService.list();
        Page<Users> page = new Page<>(pn, 2);
        Page<Users> userPage = usersService.page(page, null);
        Long current = userPage.getCurrent();
        Long total = userPage.getTotal();
        Long pages = userPage.getPages();
        List<Users> records = userPage.getRecords();
        model.addAttribute("userPage",userPage);
        return "/user/userList";
    }
}
