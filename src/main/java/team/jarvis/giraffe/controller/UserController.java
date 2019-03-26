package team.jarvis.giraffe.controller;

import team.jarvis.giraffe.model.User;
import team.jarvis.giraffe.service.UserService;
import team.jarvis.giraffe.service.impl.UserServiceImpl;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

public class UserController {
    @Resource
    private UserService userService = new UserServiceImpl();

    @RequestMapping("/userLogin")
    public String userLogin(String name, String pass) {
        User user = userService.login(name, pass);
        if(user!=null){
            return "main";
        }
        return "login";
    }
}
