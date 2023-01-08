package com.arrange.springboot_nba.mapper;


import com.arrange.springboot_nba.entities.Registration;
import com.arrange.springboot_nba.entities.Team;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * @create 2022-03-01 13:21
 */

@Mapper
public interface RegistrationMapper extends BaseMapper<Registration> {
}
