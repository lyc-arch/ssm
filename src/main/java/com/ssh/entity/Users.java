package com.ssh.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {
    private int userId;
    private String user;
    private String username;
    private String userpassword;
    private String userphone;
    private String usertype;
    private String sex;
    private String identity;

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", user='" + user + '\'' +
                ", username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", userphone='" + userphone + '\'' +
                ", usertype='" + usertype + '\'' +
                ", sex='" + sex + '\'' +
                ", identity='" + identity + '\'' +
                '}';
    }

    @Id
    @Column(name = "userID", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "user", nullable = true, length = 255)
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    @Basic
    @Column(name = "username", nullable = true, length = 255)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "userpassword", nullable = true, length = 255)
    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    @Basic
    @Column(name = "userphone", nullable = true, length = 255)
    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    @Basic
    @Column(name = "usertype", nullable = true, length = 255)
    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 20)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "identity", nullable = true, length = 255)
    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Users users = (Users) o;

        if (userId != users.userId) return false;
        if (user != null ? !user.equals(users.user) : users.user != null) return false;
        if (username != null ? !username.equals(users.username) : users.username != null) return false;
        if (userpassword != null ? !userpassword.equals(users.userpassword) : users.userpassword != null) return false;
        if (userphone != null ? !userphone.equals(users.userphone) : users.userphone != null) return false;
        if (usertype != null ? !usertype.equals(users.usertype) : users.usertype != null) return false;
        if (sex != null ? !sex.equals(users.sex) : users.sex != null) return false;
        if (identity != null ? !identity.equals(users.identity) : users.identity != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userId;
        result = 31 * result + (user != null ? user.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (userpassword != null ? userpassword.hashCode() : 0);
        result = 31 * result + (userphone != null ? userphone.hashCode() : 0);
        result = 31 * result + (usertype != null ? usertype.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (identity != null ? identity.hashCode() : 0);
        return result;
    }

}
