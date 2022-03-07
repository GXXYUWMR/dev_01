package com.fc;

import com.fc.entity.Student;

import java.util.List;

public interface StudentDao {
    List<Student> findByAge(String age);
}
