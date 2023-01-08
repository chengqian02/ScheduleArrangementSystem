package com.arrange.springboot_nba.controller.AdminController;

import com.arrange.springboot_nba.entities.Registration;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.services.RegistrationService;
import com.arrange.springboot_nba.services.TeamService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;
import java.util.List;

/**
 * @create 2022-04-01 10:57
 */
@Controller
public class TeamController {

    @Autowired
    TeamService teamService;

    @Autowired
    ScheduleController scheduleController;

    @Autowired
    RegistrationService registrationService;

    @GetMapping("/teamList")
    public String teamList(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn){
        List<Team> teamList = teamService.list();
        Page<Team> page = new Page<>(pn, 5);
        Page<Team> teamPage = teamService.page(page, null);
        Long current = teamPage.getCurrent();
        Long total = teamPage.getTotal();
        Long pages = teamPage.getPages();
        List<Team> records = teamPage.getRecords();
        model.addAttribute("teamPage",teamPage);
        return "/admin/TeamList";
    }

    @GetMapping("/teamExamine")
    public String teamExamine(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn ,@RequestParam(value = "pnum", defaultValue = "10") Integer pnum){
        List<Registration> SceduleList = registrationService.list();
        Page<Registration> page = new Page<>(pn, pnum);
        Page<Registration> RegistrationPage = registrationService.page(page, null);
        Long current = RegistrationPage.getCurrent();
        Long total = RegistrationPage.getTotal();
        Long pages = RegistrationPage.getPages();
        List<Registration> records = RegistrationPage.getRecords();
        model.addAttribute("RegistrationPage",RegistrationPage);
        model.addAttribute("pnum",pnum);
        return "/admin/registrationList";
    }

    @GetMapping("/teamCheck/{id}")
    public String teamCheck(@PathVariable("id") long id){
        //审核过程
        Registration byId = registrationService.getById(id);
        byId.setRegistrationPower(1);
        Date date = new Date();
        String s = scheduleController.formatDate(date);
        byId.setCheckDate(s);

        boolean b = registrationService.saveOrUpdate(byId);



        //写入team表
        Team team = new Team();
        team.setCoach(byId.getCoach());
        team.setDivision(byId.getDivision());
        team.setGeneralManager(byId.getGeneralManager());
        team.setLocation(byId.getLocation());
        team.setOwner(byId.getOwner());
        team.setStadium(byId.getStadium());
        team.setTeamName(byId.getTeamName());
        team.setTeamUnion(byId.getTeamUnion());
        team.setJoinDate(s);
        team.setUserId(byId.getUserId());
        boolean save = teamService.save(team);
        if(b && save){
            System.out.println("审核成功");
        }else {
            System.out.println("审核失败");
        }
        return "redirect:/teamExamine";
    }


    @GetMapping("/teamInfoDelete/{id}")
    public String teamInfoDelete(@PathVariable("id") long id, Registration registration,
                                 @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                 RedirectAttributes redirectAttributes
    ){
        boolean save = teamService.removeById(id);
        redirectAttributes.addAttribute("pn", pn);
        return "redirect:/teamList";
    }

    @GetMapping("/teamInfoModify/{id}")
    public String teamInfoModify(@PathVariable("id") long id, Registration registration, Model model){
        Team byId = teamService.getById(id);
        model.addAttribute("teaminfo",byId);
        return "/admin/TeamAddModify";
    }

    @GetMapping("/addTeam")
    public String addTeam(){
        return "/admin/TeamAddModify";
    }

    @PostMapping("/teamAddModify")
    public String teamAddModify(Team team){
        boolean b = teamService.saveOrUpdate(team);
        return "redirect:/teamList";
    }

}
