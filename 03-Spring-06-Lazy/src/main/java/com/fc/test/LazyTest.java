package com.fc.test;

import com.fc.entity.Student;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class LazyTest {
    @Test
    public void test(){
        ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");

        Student student = applicationContext.getBean(Student.class);

        student.setId(3);
        student.setName("七七");
        student.setAge((byte) 22);

        System.out.println(student);
        applicationContext.close();
    }
}
