package com.arrange.springboot_nba.controller.GetTables;

import com.arrange.springboot_nba.entities.Scedule;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.services.SceduleService;
import com.arrange.springboot_nba.services.TeamService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * @create 2022-05-06 10:14
 */
@Controller
public class GetTeam {
    @Autowired
    TeamService teamService;
    public List<Team> getTeam(int userId){
        QueryWrapper<Team> sceduleQueryWrapper = new QueryWrapper<>();
        sceduleQueryWrapper.eq("user_id",userId);
        List<Team> teamList = teamService.list(sceduleQueryWrapper);
        return teamList;
    }

}
