package com.arrange.springboot_nba.services.impl;


import com.arrange.springboot_nba.entities.Field;
import com.arrange.springboot_nba.entities.Scedule;
import com.arrange.springboot_nba.mapper.FieldMapper;
import com.arrange.springboot_nba.mapper.SceduleMapper;
import com.arrange.springboot_nba.services.FieldService;
import com.arrange.springboot_nba.services.SceduleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.thymeleaf.spring5.expression.Fields;

/**
 * @create 2022-03-01 13:38
 */
@Service
public class FieldServiceImpl extends ServiceImpl<FieldMapper, Field> implements FieldService {

}
