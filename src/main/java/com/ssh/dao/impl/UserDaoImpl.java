package com.ssh.dao.impl;


import com.ssh.dao.UserDao;
import com.ssh.entity.Users;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;

/**

 * Created by kinthon on 17-6-23.

 */



@Transactional(rollbackFor = Exception.class)

//出现Exception异常回滚

@Repository("userDao") //进行注入

public  class UserDaoImpl implements UserDao {

    @Resource(name="sessionFactory")

        private SessionFactory sessionFactory;



    @Override

    public void add(Users user) {


        sessionFactory.getCurrentSession().save(user);

    }
    @Override

    public Users login(Users user) {

        Iterator<Users> it;


        String hsql="FROM Users u where u.username=? and u.userpassword=?";

        System.out.println(hsql);

        Query query = sessionFactory.getCurrentSession().createQuery(hsql);

        query.setString(0, user.getUsername());

        query.setString(1, user.getUserpassword());

        System.out.println(user.getUsername());
        System.out.println(user.getUsertype());

        it=query.iterate();
        Users users = (Users)query.uniqueResult();

        if(users != null) {
            return  users;


        } else {

            System.out.println("false");

            return null;

        }

    }



    @Override

    public List<Users> getUser(int pageNow,int pagesize) {

        Query query = sessionFactory.getCurrentSession().createQuery("FROM Users");

        query.setFirstResult((pageNow-1)*pagesize);
        query.setMaxResults(pagesize);
        List<Users> list = query.list();

        if(list.size()>0){
            return list;
        }

        return null;

    }



    @Override

    public Users getUser(int id) {

        System.out.println(id+"===========");
        return (Users)sessionFactory.getCurrentSession().get(Users.class, id);

    }




    @Override

    public void update(Users user) {
        try {
            sessionFactory.getCurrentSession().update(user);

        }catch (Exception e)
        {
            System.out.println(e.getMessage());
        }



    }



    @Override

    public void delete(int id) {

        sessionFactory.getCurrentSession().delete(

                sessionFactory.getCurrentSession().get(Users.class, id)

        );

    }

    @Override
    public List<Users> select(String message,String condition,int pageNow,int pagesize) {


    if("username".equals(condition)) {

        Query query = sessionFactory.getCurrentSession().
                createQuery("FROM Users p where p.username like "+"'%"+message+"%'");
        query.setFirstResult((pageNow-1)*pagesize);
        query.setMaxResults(pagesize);

        return query.list();
    }
        if("indentity".equals(condition)) {
            Query query =  sessionFactory.getCurrentSession().
                    createQuery("FROM Users p where p.userpassword like "+"'%"+message+"%'");
            query.setFirstResult((pageNow-1)*pagesize);
            query.setMaxResults(pagesize);

            return query.list();

        }
       return  null;
    }

    @Override
    public int findUserSize() {
        int size = sessionFactory.getCurrentSession().createQuery("FROM Users ").list().size();

        return size;
    }

    @Override
    public int selectUserSize(String message, String condition) {
        if("username".equals(condition)) {

            return  sessionFactory.getCurrentSession().createQuery("FROM Users p where p.username like "+"'%"+message+"%'").list().size();
        }
        if("indentity".equals(condition)) {
            return  sessionFactory.getCurrentSession().
                    createQuery("FROM Users p where p.userpassword like "+"'%"+message+"%'").list().size();
        }

        return 0;
    }


}
