package com.ams.git.service;

import com.ams.git.service.bo.User;

import java.util.List;

public interface IUserService {



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

    //搜索
    public List<User> likeFind(String like);

}
