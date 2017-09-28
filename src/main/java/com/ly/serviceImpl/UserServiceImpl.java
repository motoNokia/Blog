package com.ly.serviceImpl;

import com.ly.bean.User;
import com.ly.dao.UserDao;
import com.ly.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    public List<User> getUserAll() {
        return userDao.getUserAll();
    }

    public User getUserBuId(int userId) {
        return userDao.getUserBuId(userId);
    }
}
