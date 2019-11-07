package com.ssh.action;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.dto.pageShow;
import com.ssh.entity.Users;
import com.ssh.service.UserService;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("checkAction")
@Scope("prototype")
public class CheckAction extends ActionSupport {

    @Resource
    private UserService userService;
    private List<Users> list;
    private Users user;
   private String message;
   private String choose;
   private int pageNow = 1;
   private int pagesize = 5;
    private pageShow pageshow1;

    public pageShow getPageshow1() {
        return pageshow1;
    }

    public void setPageshow1(pageShow pageshow) {
        this.pageshow1 = pageshow;
    }

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    private boolean result;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    @JSON(serialize = false)
    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public List<Users> getList() {
        return list;
    }

    public void setList(List<Users> list) {
        this.list = list;
    }

    @JSON(serialize = false)
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @JSON(serialize = false)
    public String getChoose() {
        return choose;
    }

    public void setChoose(String choose) {
        this.choose = choose;
    }

    public String execute() throws Exception{

        System.out.println(message+"---------"+choose);
        list= userService.select(message,choose,pageNow,pagesize);

        pageshow1 = new pageShow(pageNow,userService.selectUserSize(message,choose),pagesize);

        System.out.println(list);

        return SUCCESS;
    }


    public String delete(){

        result = userService.deleteUser(user.getUserId());
        return SUCCESS;
    }
}
