package com.arrange.springboot_nba.controller.AdminController;

import com.arrange.springboot_nba.entities.Field;
import com.arrange.springboot_nba.entities.Registration;
import com.arrange.springboot_nba.entities.Scedule;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.services.FieldService;
import com.arrange.springboot_nba.services.SceduleService;
import com.arrange.springboot_nba.services.TeamService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @create 2022-04-10 19:43
 */
@Controller
public class ScheduleController {
    /**
    * 循环赛日程安排问题。
    * 设有16个运动员将进行网球循环赛。现要设计一个满足以下要求的比赛日程表：
    * ⑴ 每个选手必须与其它15个选手各赛一场，
    * ⑵ 每个选手一天只能赛一场，
    * ⑶ 循环赛进行15天。
    * @author 光
    *
    */

    @Autowired
    TeamService teamService;

    @Autowired
    FieldService fieldService;


    @Autowired
    SceduleService sceduleService;
    private int num; // 人数
    private LinkedList<Integer> list = new LinkedList<Integer>();

    @GetMapping("/unicyclic")
    public String unicyclic(Model model){
        long count1 = sceduleService.count();
        System.out.println(count1);
        if(count1 == 0){
            int num = 0;
            List<Team> teamlist = teamService.list();
            int teamnum = teamlist.size();

            for (int i = 0; i < teamnum - 1; i++)  {
                System.out.println("第" + (i + 1) + "天");
                LinkedList<Scedule> teamSubLinkedList = new LinkedList<Scedule>();
                for (int j = 0; j < teamnum / 2; j++)  {
                    Scedule scedule = new Scedule();
                    scedule.setMatchId(++num);
                    scedule.setTeamName(teamlist.get(j).getTeamName());
                    scedule.setOpponent(teamlist.get(teamnum - 1 - j).getTeamName());
                    teamSubLinkedList.add(scedule);
                }
                boolean b = sceduleService.saveBatch(teamSubLinkedList);
            }
            List<Scedule> SceduleList = sceduleService.list();

            long count = fieldService.count();
            int t = 0;
            for(Scedule scedule: SceduleList){
                Field byId = fieldService.getById((t%count)+1);
                t=t+1;
                scedule.setSite(byId.getFieldName());
                boolean update = sceduleService.saveOrUpdate(scedule);
            }


//        Date date = new Date();
//
//        for(Scedule scedule: SceduleList){
//
//            String s = formatDate(date);
//            scedule.setDateTime(s);
//
//            boolean update = sceduleService.saveOrUpdate(scedule);
//        }
            return "redirect:/scheduleQuery";
        }else {
            return "/admin/schedule";
        }

    }

    public String formatDate(Date date){
        long times = date.getTime();//时间戳
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(date);
        return  dateString;
    }

    @GetMapping("/schedule")
    public String schedule(Model model){
        return "/admin/schedule";
    }

    @GetMapping("/scheduleAdd")
    public String scheduleAdd(Model model){
        List<Team> teamList = teamService.list();
        List<Field> fieldlist = fieldService.list();
        model.addAttribute("teamList",teamList);
        model.addAttribute("fieldlist",fieldlist);
        return "/admin/scheduleAdd";
    }

    @GetMapping("/scheduleInfoDelete/{id}")
    public String registrrationInfoDelete(@PathVariable("id") long id, Registration registration,
                                          @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                          RedirectAttributes redirectAttributes
    ){
        boolean save = sceduleService.removeById(id);
        redirectAttributes.addAttribute("pn", pn);
        return "redirect:/scheduleQuery";
    }


    @GetMapping("/scheduleInfoModify/{id}")
    public String scheduleInfoModify(@PathVariable("id") long id, Registration registration,
                                          @RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                          RedirectAttributes redirectAttributes,
                                     Model model
    ){
        List<Team> teamList = teamService.list();
        List<Field> fieldlist = fieldService.list();
        Scedule sceduleInfo = sceduleService.getById(id);
        model.addAttribute("sceduleInfo", sceduleInfo);
        model.addAttribute("teamList",teamList);
        model.addAttribute("fieldlist",fieldlist);
        return "/admin/scheduleAdd";
    }

    @PostMapping("scheduleInfoAdd")
    public String scheduleInfoAdd(Scedule scedule){
        boolean b = sceduleService.saveOrUpdate(scedule);
        return "redirect:/scheduleQuery";

    }


    @GetMapping("/scheduleQuery")
    public  String scheduleQuery(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn ,@RequestParam(value = "pnum", defaultValue = "10") Integer pnum){
        List<Scedule> SceduleList = sceduleService.list();
        Page<Scedule> page = new Page<>(pn, pnum);
        Page<Scedule> ScedulePage = sceduleService.page(page, null);
        Long current = ScedulePage.getCurrent();
        Long total = ScedulePage.getTotal();
        Long pages = ScedulePage.getPages();
        List<Scedule> records = ScedulePage.getRecords();
        model.addAttribute("ScedulePage",ScedulePage);
        model.addAttribute("pnum",pnum);
        return "/admin/ScheduleList";
    }

    @GetMapping("/randomScheduling")
    public String randomScheduling(){
        ArrayList<Long> longs = new ArrayList<Long>();      //存储所有球队 id
        ArrayList<Long> longs2 = new ArrayList<Long>();     //存储随机的比赛的球队 id
        ArrayList<Long> longs3 = new ArrayList<Long>();     //存储所有场地的 id
        List<Team> teamList = teamService.list();
        List<Field> fieldList = fieldService.list();
        //获取所有球队id
        for(Team team: teamList){
            longs.add(team.getId());
        }
        //获取所有球队id
        Random rd = new Random();
        while (longs2.size()<10){
            long n = (long)rd.nextInt(longs.size());
            if(!longs2.contains(n)){
                longs2.add(n);
            }
        }

        //给这些随机的球队安排赛程
        Random rd2 = new Random();
        // 获取所有场地的id
        for(Field field: fieldList){
            longs3.add(field.getFieldId());
        }
        for(int i =0; i< longs2.size(); i++){
            Scedule scedule = new Scedule();
            scedule.setTeamName(teamService.getById(longs2.get(i)).getTeamName());
            i+=1;
            scedule.setOpponent(teamService.getById(longs2.get(i)).getTeamName());
            int i1 = rd2.nextInt(fieldList.size() - 1)+1;
            scedule.setSite(fieldService.getById(longs3.get(i1)).getFieldName());
            sceduleService.saveOrUpdate(scedule);
        }
        return "redirect:/scheduleQuery";
    }
}
