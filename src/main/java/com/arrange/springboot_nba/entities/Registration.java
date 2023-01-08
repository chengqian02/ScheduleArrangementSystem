package com.arrange.springboot_nba.entities;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @create 2022-02-28 22:55
 */
@Data
@TableName("registration")
public class Registration {
    @TableId(type =  IdType.INPUT)
    private long id;
    private String teamName;
    private String stadium;
    private String location;
    private String coach;
    private String generalManager;
    private String owner;
    private String teamUnion;
    private String division;
    private String phone;
    private String registrationDate;
    private String checkDate;
    private int registrationPower;
    private int userId;

}
