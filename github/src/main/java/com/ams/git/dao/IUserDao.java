package com.ams.git.dao;

import com.ams.git.service.bo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {

    //增
    public void insert(User user);

    //删
    public void delete(int id);

    //改
    public void update(User user);

    //查
    public User select(User user);

    //查所有
    public List<User> selectall(User user);
}
