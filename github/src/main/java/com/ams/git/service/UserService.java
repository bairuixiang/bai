package com.ams.git.service;


import com.ams.git.dao.IUserDao;
import com.ams.git.service.bo.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public List<User> likeFind(String like) {
        Map<String, String> map = new HashMap<>();
        map.put("likeFind",like);
        List<User> users = userDao.likeFind(map);
        List<User> users1 = userDao.likeFind1(map);
        List<User> users2 = userDao.likeFind2(map);

        users.addAll(users1);
        users.addAll(users2);
        return users;
    }


}
