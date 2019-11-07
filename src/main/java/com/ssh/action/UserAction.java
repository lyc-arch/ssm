package com.ssh.action;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dto.Select;
import com.ssh.dto.pageShow;
import com.ssh.entity.Users;
import com.ssh.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;



/**

 * Created by kinthon on 17-6-25.

 */



@Controller("userAction")

@Scope("prototype")

public class UserAction extends ActionSupport {

    @Resource

    private UserService userService;
    private Users user;

    private boolean result;
    private int pageNow = 1;
    private int pagesize = 5;
    private Select st;
    private List<Users> li;
    private int id;


    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public List<Users> getLi() {
        return li;
    }

    public void setLi(List<Users> li) {
        this.li = li;
    }

    public Users getUser() {

        return user;

    }


    public void setUser(Users user) {

        this.user = user;

    }

    public String list() {
        try {

            this.li =userService.getAllUser(pageNow,pagesize);
            pageShow pageshow = new pageShow(pageNow,userService.findUserSize(),pagesize);
            Map session = ActionContext.getContext().getSession();
            Map request = (Map) ActionContext.getContext().get("request");
            request.put("page", pageshow);

            return  "list";
        }
             catch (Exception e)
             { e.printStackTrace(); return ERROR; }

        }

    public String delete(){
        userService.deleteUser(user.getUserId());
            return "deletesuccess";

    }
    public String login() {

        Users users = userService.login(user);
        if (users !=null) {
            Map session = ActionContext.getContext().getSession();
            session.put("user", users);

            return "loginsuccess";

        } else {

            return ERROR;

        }

    }

    public String makemessage(){

        return "makesuccess";
    }
    public String add() {
        System.out.println(user);
        if (userService.addUser(user)) {
            return "addsuccess";
        }

        else {
            return NONE;
        }

    }
    public String update(){


        if(userService.updateUser(user)){

            result = true;

        }else {
            result = false;
        }
        System.out.println(user);
        return SUCCESS;
    }

    public String findById(){

        System.out.println("================");
        user= userService.getUserById(id);
        System.out.println(user);
        Map session = ActionContext.getContext().getSession();

        System.out.println(user+"===========");
        session.put("user", user);

        return SUCCESS;
    }



}