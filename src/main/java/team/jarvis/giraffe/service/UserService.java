package team.jarvis.giraffe.service;

import team.jarvis.giraffe.model.User;

public interface UserService {
    User login(String name, String pass);
    void delUser(Integer id);
    void updateUserById(Integer id);
    void getUserById(Integer id);
}
