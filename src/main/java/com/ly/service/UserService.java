package com.ly.service;


import com.ly.bean.User;

import java.util.List;

public interface UserService {
    List<User> getUserAll();
    User getUserBuId(int userId);
}
