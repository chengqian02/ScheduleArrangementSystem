package com.arrange.springboot_nba.entities;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("field")
public class Field {

    @TableId(type = IdType.INPUT)
    private long fieldId;
    private String fieldName;
    private String fieldShort;
}