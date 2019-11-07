package com.ssh.service;


import com.ssh.entity.Users;

import java.util.List;

/**

 * Created by kinthon on 17-6-23.

 */

public interface UserService {

    public boolean addUser(Users user);
    public Users login(Users user);

    public List<Users> getAllUser(int pageNow,int pagesize);
    public Users getUserById(int id);
    public boolean updateUser(Users user);
    public boolean deleteUser(int id);
    public int  findUserSize();
    public int  selectUserSize(String message,String condition);
    public List<Users> select(String message,String condition,int pageNow,int pagesize);


}
