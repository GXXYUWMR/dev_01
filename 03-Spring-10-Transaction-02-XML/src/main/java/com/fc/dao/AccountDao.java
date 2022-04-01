package com.fc.dao;

public interface AccountDao {
    //加钱
    void interfaceMoney(Integer id, Long money);

    //减钱
    void decreaseMoney(Integer id,Long money);
}
