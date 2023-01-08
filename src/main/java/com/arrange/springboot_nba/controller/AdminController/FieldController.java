package com.arrange.springboot_nba.controller.AdminController;

import com.arrange.springboot_nba.entities.Field;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.services.FieldService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * @create 2022-04-15 14:19
 */
@Controller
public class FieldController {

    @Autowired
    FieldService fieldService;

    @GetMapping("/fieldList")
    public String fieldList(Model model,  @RequestParam(value = "pn", defaultValue = "1") Integer pn){
        List<Field> fieldList = fieldService.list();
        Page<Field> page = new Page<>(pn, 5);
        Page<Field> fieldPage = fieldService.page(page, null);
        Long current = fieldPage.getCurrent();
        Long total = fieldPage.getTotal();
        Long pages = fieldPage.getPages();
        List<Field> records = fieldPage.getRecords();

        model.addAttribute("fieldPage",fieldPage);
        return "/admin/fieldList";
    }

    @GetMapping("/fieldadd")
    public String fieldadd(){
        return "/admin/fieldAdd";
    }

    @GetMapping("/fieldModify/{id}")
    public String fieldModify(@PathVariable("id") long id,
                              Model model){
        Field fieldInfo = fieldService.getById(id);
        model.addAttribute("fieldInfo",fieldInfo);
        return "/admin/fieldAdd";
    }

    @PostMapping("/fieldaddinfo")
    public String fieldaddinfo(Field field){
        boolean save = fieldService.saveOrUpdate(field);
        return "redirect:/fieldList";
    }

    @GetMapping("/fieldInfoDel/{id}")
    public String fieldInfoDel(@PathVariable("id") long id,
                               @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                               RedirectAttributes redirectAttributes){
        boolean b = fieldService.removeById(id);
        redirectAttributes.addAttribute("pn", pn);
        return "redirect:/fieldList";
    }
}
