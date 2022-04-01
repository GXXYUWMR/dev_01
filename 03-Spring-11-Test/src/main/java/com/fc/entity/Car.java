package com.fc.entity;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class Car {
    @Value("100")
    private Float speed;
    @Value("red")
    private String color;

    public Float getSpeed(){
        return speed;
    }
}
