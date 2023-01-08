package com.arrange.springboot_nba.controller.users;

import com.arrange.springboot_nba.controller.AdminController.ScheduleController;
import com.arrange.springboot_nba.controller.GetTables.GetTeam;
import com.arrange.springboot_nba.entities.Registration;
import com.arrange.springboot_nba.entities.Scedule;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.services.RegistrationService;
import com.arrange.springboot_nba.services.SceduleService;
import com.arrange.springboot_nba.services.TeamService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @create 2022-05-04 18:10
 */
@Controller
public class competitionController {

    @Autowired
    RegistrationService registrationService;

    @Autowired
    ScheduleController scheduleController;

    @Autowired
    GetTeam getTeam;

    @Autowired
    TeamService teamService;

    @Autowired
    SceduleService sceduleService;

    @GetMapping("/registration")
    public String registration(){
        return "/user/registration";
    }

    @PostMapping("/registrrationInfo")
    public String registrrationInfo(Registration registration, HttpServletRequest request){
        Date date = new Date();
        String s = scheduleController.formatDate(date);
        registration.setRegistrationDate(s);
        registration.setRegistrationPower(0);
        if(request.getSession().getAttribute("loginId") != null){
            registration.setUserId(Integer.parseInt(request.getSession().getAttribute("loginId").toString()));
        }
        boolean save = registrationService.save(registration);
        return "redirect:/registration";
    }

    @GetMapping("/registrrationInfoDelete/{id}")
    public String registrrationInfoDelete(@PathVariable("id") long id, Registration registration,
                                          @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                          RedirectAttributes redirectAttributes
                                          ){
        boolean save = registrationService.removeById(id);

        redirectAttributes.addAttribute("pn", pn);
        return "redirect:/teamExamine";
    }

    @GetMapping("/userScheduleQuery")
    public String scheduleQuery(HttpServletRequest request, Model model ){
        ArrayList<Scedule> sceduleSList = new ArrayList<Scedule>();
        Object loginId = request.getSession().getAttribute("loginId");
        if(loginId==null)
        {
            return "/user/ScheduleList";
        }else {
            QueryWrapper<Team> teamQueryWrapper = new QueryWrapper<>();
            long count = teamService.count(teamQueryWrapper);
            if(count==0){
                return "/user/ScheduleList";
            }
            teamQueryWrapper.eq("user_id",Integer.parseInt(loginId.toString()));
            List<Team> teamList = getTeam.getTeam(Integer.parseInt(loginId.toString()));
            for (Team team : teamList) {
                QueryWrapper<Scedule> sceduleQueryWrapper = new QueryWrapper<>();
                sceduleQueryWrapper.eq("team_name", team.getTeamName());
                List<Scedule> sceduleList = sceduleService.list(sceduleQueryWrapper);
                sceduleSList.addAll(sceduleList);
            }
            model.addAttribute("sceduleSList", sceduleSList);
            return "/user/ScheduleList";
        }
    }

    @GetMapping("/userScheduleWaiver/{id}")
    public String userScheduleWaiver(@PathVariable("id") long id,
                                     HttpServletRequest request, Model model ){
        boolean b = sceduleService.removeById(id);
        return "/user/ScheduleList";
    }

}
