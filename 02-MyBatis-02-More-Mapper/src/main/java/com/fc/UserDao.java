package com.fc;
import com.fc.entity.User;

import java.util.List;

public interface UserDao {
    List<User> findAll();
}
