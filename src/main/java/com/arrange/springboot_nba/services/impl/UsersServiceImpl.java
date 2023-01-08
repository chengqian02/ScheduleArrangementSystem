package com.arrange.springboot_nba.services.impl;


import com.arrange.springboot_nba.entities.Users;

import com.arrange.springboot_nba.mapper.UsersMapper;

import com.arrange.springboot_nba.services.UsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @create 2022-03-01 13:38
 */
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements UsersService {

}
