package com.fc.dao.impl;

import com.fc.dao.UserDao;
import com.fc.entity.User;

import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public List<User> findAll(){
        ArrayList<User> list = new ArrayList<>();

        list.add(new User(1,"温迪","123456"));
        list.add(new User(2,"钟离","456789"));
        list.add(new User(3,"影","666666"));

        return list;
    }
}
