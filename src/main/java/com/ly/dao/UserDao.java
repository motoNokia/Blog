package com.ly.dao;

import com.ly.bean.User;

import java.util.List;

public interface UserDao {
    List<User> getUserAll();
    User getUserBuId(int userId);
}
