package team.jarvis.giraffe.service.impl;

import team.jarvis.giraffe.dao.UserDao;
import team.jarvis.giraffe.model.User;
import team.jarvis.giraffe.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    public User login(String name, String pass) {
        if(name==null&&pass==null){
            return null;
        }
        User user = userDao.getUserByNameAndPass(name, pass);
        if(user==null){
            return null;
        }
        return user;
    }


    public void delUser(Integer id) {

    }

    public void updateUserById(Integer id) {

    }

    public void getUserById(Integer id) {

    }
}
