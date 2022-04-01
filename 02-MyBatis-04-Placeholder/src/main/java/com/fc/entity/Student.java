package com.fc.entity;


import java.util.Date;
import lombok.Data;

@Data
public class Student {
    private Integer id;
    private String name;
    private Byte age;
    private String gender;
    private Date birthday;
    private String info;
}
