package com.arrange.springboot_nba.entities;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.annotation.sql.DataSourceDefinition;
import java.util.Date;

/**
 * @create 2022-02-28 22:56
 */

@Data
@TableName("users")
public class Users {
    @TableId(type = IdType.INPUT)
    private Long userId;
    private String userName;
    private String userPassword;
    private String userEmail;
    private Integer userGender;
    private String  userBirth;
    private Integer power;
}