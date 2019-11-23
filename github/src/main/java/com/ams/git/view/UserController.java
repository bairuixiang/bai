package com.ams.git.view;


import com.ams.git.service.IUserService;
import com.ams.git.service.bo.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger logger = LogManager.getLogger();

    @Autowired
    private IUserService userService;

    //登录
    @RequestMapping("/login")
    public String login(User user) {

        User users = userService.select(user);

        if(users != null) {
            return "redirect:/user/selectall";
        }
        return "login";
    }


    //增
    @RequestMapping("/insert")
    public String insert(User user) {
        userService.insert(user);
        return "redirect:/user/selectall";
    }

    //删
    @RequestMapping("/delete")
    public String delete(int id) {
        userService.delete(id);
        return "redirect:/user/selectall";
    }

    //改
    @RequestMapping("/update")
    public String update(User user) {
        userService.update(user);

        return "redirect:/user/selectall";
    }

    //查
    @RequestMapping("/select")
    public String select(User user, Model model) {
        User users = userService.select(user);
        model.addAttribute("users" ,users);
        return "add";
    }

    //查所有
    @RequestMapping("/selectall")
    public String selectall(String like, Model model) {

        List<User> users = userService.likeFind(like);

        model.addAttribute("users" ,users);

        return "index";
    }



    @RequestMapping("/getadd")
    public String getadd() {

        return "add";
    }

}
