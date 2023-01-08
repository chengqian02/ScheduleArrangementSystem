package com.arrange.springboot_nba.controller.users;

import com.arrange.springboot_nba.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @create 2022-03-03 18:51
 */
@Controller
public class UserDeleteController {

    @Autowired
    UsersService usersService;

    @GetMapping("/user/delete/{id}")
    public String deleteUers(@PathVariable("id") long id,
                             @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                             RedirectAttributes redirectAttributes){
        usersService.removeById(id);
        redirectAttributes.addAttribute("pn", pn);
        return "redirect:/userList";
    }


}
