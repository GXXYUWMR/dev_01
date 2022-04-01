package com.fc.demo2._cglib;

import com.fc.demo2._jdk.GamePlay;

//被代理对象
public class GamePlayer implements GamePlay{
    @Override
    public void login(){
        System.out.println("TIMI。。。");
    }

    @Override
    public void killBoss(){
        System.out.println("打怪");
    }

    @Override
    public void upgrade(){
        System.out.println("升级");
    }
}
