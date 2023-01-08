package com.arrange.springboot_nba.mapper;


import com.arrange.springboot_nba.entities.Field;
import com.arrange.springboot_nba.entities.Scedule;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * @create 2022-03-01 13:21
 */

@Mapper
public interface FieldMapper extends BaseMapper<Field> {
}
