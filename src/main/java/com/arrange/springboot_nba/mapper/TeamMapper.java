package com.arrange.springboot_nba.mapper;


import com.arrange.springboot_nba.entities.Team;
import com.arrange.springboot_nba.entities.Users;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * @create 2022-03-01 13:21
 */

@Mapper
public interface TeamMapper extends BaseMapper<Team> {
}
