package com.arrange.springboot_nba.entities;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("scedule")
public class Scedule {
    @TableId(type = IdType.INPUT)
    private long matchId;
    private String teamName;
    private String dateTime;
    private String opponent;
    private String result;
    private String scores;
    private String site;
}