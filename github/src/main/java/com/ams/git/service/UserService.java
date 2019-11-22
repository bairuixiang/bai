package com.ams.git.service;


import com.ams.git.dao.IUserDao;
import com.ams.git.service.bo.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {

    private static final Logger logger = LogManager.getLogger();

    @Autowired
    private IUserDao userDao;

    @Override
    public void insert(User user) {
        userDao.insert(user);
    }

    @Override
    public void delete(int id) {
        userDao.delete(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public User select(User user) {
        return userDao.select(user);
    }

    @Override
    //查所有
    public List<User> selectall(User user) {
        return userDao.selectall(user);
    }
}
