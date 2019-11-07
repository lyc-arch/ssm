package com.ssh.service.impl;


import com.ssh.dao.UserDao;
import com.ssh.entity.Users;
import com.ssh.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;





/**

 * Created by kinthon on 17-6-23.

 */

//注入服务

@Service("userService")

public class UserServiceImpl implements UserService{

    //自动注入userDao，也可以使用@Autowired

    @Resource

    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override

    public boolean addUser(Users user) {



        this.userDao.add(user);

        return true;

    }



    @Override

    public Users login(Users user) {

        return this.userDao.login(user);

    }



    @Override

    public List<Users> getAllUser(int pageNow,int pagesize) {

        return userDao.getUser(pageNow,pagesize);

    }



    @Override

    public Users getUserById(int id) {

        return this.userDao.getUser(id);

    }



    @Override

    public boolean updateUser(Users user) {
        System.out.println(user+"===========");
        this.userDao.update(user);

        return true;



    }
    @Override

    public boolean deleteUser(int id) {

        this.userDao.delete(id);

        return true;

    }

    @Override
    public int findUserSize() {
        return this.userDao.findUserSize();
    }

    @Override
    public int selectUserSize(String message, String condition) {
        return this.userDao.selectUserSize(message,condition);
    }

    @Override
    public List<Users> select(String message,String condition,int pageNow,int pagesize) {

        return this.userDao.select(message,condition,pageNow,pagesize);
    }



}
