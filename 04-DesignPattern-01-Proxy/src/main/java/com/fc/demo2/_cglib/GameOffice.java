package com.fc.demo2._cglib;

import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class GameOffice implements MethodInterceptor {
    @Override
    public Object intercept(Object obj, Method method, Object[] args, MethodProxy proxy)throws Throwable{
         if (method.getName().equals("login")){
             System.out.println("验证码");
         }

         Object o = proxy.invokeSuper(obj, args);

         if (method.getName().equals("killBoss")){
             System.out.println("斩杀");
         }
        return o;
    }
}
