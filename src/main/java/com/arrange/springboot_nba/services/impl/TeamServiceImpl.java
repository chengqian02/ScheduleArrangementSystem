package com.arrange.springboot_nba.services.impl;


import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.entities.Users;
import com.arrange.springboot_nba.mapper.TeamMapper;
import com.arrange.springboot_nba.mapper.UsersMapper;
import com.arrange.springboot_nba.services.TeamService;
import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @create 2022-03-01 13:38
 */
@Service
public class TeamServiceImpl extends ServiceImpl<TeamMapper, Team> implements TeamService {

}
