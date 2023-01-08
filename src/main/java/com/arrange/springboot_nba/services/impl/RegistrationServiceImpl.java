package com.arrange.springboot_nba.services.impl;


import com.arrange.springboot_nba.entities.Registration;
import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.mapper.RegistrationMapper;
import com.arrange.springboot_nba.mapper.TeamMapper;
import com.arrange.springboot_nba.services.RegistrationService;
import com.arrange.springboot_nba.services.TeamService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @create 2022-03-01 13:38
 */
@Service
public class RegistrationServiceImpl extends ServiceImpl<RegistrationMapper, Registration> implements RegistrationService {

}
