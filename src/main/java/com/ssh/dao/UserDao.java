package com.ssh.dao;
import com.ssh.entity.Users;

import java.util.List;

/**

 * Created by kinthon on 17-6-23.

 */

public interface UserDao {

    /**

     * 添加并保存用户

     * @param user

     */

    public void add(Users user);



    /**

     * 进行登录

     */

    public Users login(Users user);
    /**

     * 获取用户列表

     */
    public List<Users> getUser(int pageNow,int pagesize);
    /**

     * 根据用户Id获取用户信息

     * @param id

     * @return

     */

    public Users getUser(int id);
    /**

     * 更新用户信息

     * @param user

     */

    public void update(Users user);

    /**

     * 根据用户id删除用户信息

     * @param id

     */

    public void delete(int id);

    public List<Users> select(String message,String condition,int pageNow,int pagesize);

   public  int findUserSize();

   public  int selectUserSize(String message, String condition);
}
