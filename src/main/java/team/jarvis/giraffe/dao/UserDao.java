package team.jarvis.giraffe.dao;

import team.jarvis.giraffe.model.User;

public interface UserDao {
    void addUser(String name, String pass);
    void delUserById(Integer id);
    void updateUserById(Integer id);
    User getUserById(Integer id);
    User getUserByName(String name);
    User getUserByNameAndPass(String name, String pass);

}
