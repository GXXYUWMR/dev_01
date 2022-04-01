package com.fc.demo1._jdk;

import com.fc.demo1._static.Lawsuit;
//当事人，原告(被代理对象，真实对象)
public class Parties implements Lawsuit{
    @Override
    public void submit(){
        System.out.println("好好学习");
    }

    @Override
    public void defend(){
        System.out.println("天天向上");
    }

}
