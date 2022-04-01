package com.fc.demo1._cglib;

import com.fc.demo1._static.Lawsuit;

//当事人，原告(被代理对象，真实对象)
public class Parties implements Lawsuit{
    @Override
    public void submit(){
        System.out.println("坚持坚持。。。");
    }

    @Override
    public void defend(){
        System.out.println("再努力努力。。。");
    }
}
