package com.fc;


import com.fc.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    Student findByID(Integer id);

    Student findIdAndName(Integer id,String name);

    Student findIdAndAge(Integer id,Integer age);

    Student findByNameAndAge(@Param("name") String name,@Param("page") Integer age);
}
