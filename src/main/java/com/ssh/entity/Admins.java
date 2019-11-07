package com.ssh.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admins {
    private int adminId;
    private String adminname;
    private String username;
    private String adminpassword;
    private String adminphone;
    private String adminphoneEmail;
    private String adminType;

    @Id
    @Column(name = "adminID", nullable = false)
    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    @Basic
    @Column(name = "adminname", nullable = true, length = 255)
    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
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
    @Column(name = "adminpassword", nullable = true, length = 255)
    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    @Basic
    @Column(name = "adminphone", nullable = true, length = 255)
    public String getAdminphone() {
        return adminphone;
    }

    public void setAdminphone(String adminphone) {
        this.adminphone = adminphone;
    }

    @Basic
    @Column(name = "adminphoneEmail", nullable = true, length = 255)
    public String getAdminphoneEmail() {
        return adminphoneEmail;
    }

    public void setAdminphoneEmail(String adminphoneEmail) {
        this.adminphoneEmail = adminphoneEmail;
    }

    @Basic
    @Column(name = "adminType", nullable = true, length = 255)
    public String getAdminType() {
        return adminType;
    }

    public void setAdminType(String adminType) {
        this.adminType = adminType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Admins admins = (Admins) o;

        if (adminId != admins.adminId) return false;
        if (adminname != null ? !adminname.equals(admins.adminname) : admins.adminname != null) return false;
        if (username != null ? !username.equals(admins.username) : admins.username != null) return false;
        if (adminpassword != null ? !adminpassword.equals(admins.adminpassword) : admins.adminpassword != null)
            return false;
        if (adminphone != null ? !adminphone.equals(admins.adminphone) : admins.adminphone != null) return false;
        if (adminphoneEmail != null ? !adminphoneEmail.equals(admins.adminphoneEmail) : admins.adminphoneEmail != null)
            return false;
        if (adminType != null ? !adminType.equals(admins.adminType) : admins.adminType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = adminId;
        result = 31 * result + (adminname != null ? adminname.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (adminpassword != null ? adminpassword.hashCode() : 0);
        result = 31 * result + (adminphone != null ? adminphone.hashCode() : 0);
        result = 31 * result + (adminphoneEmail != null ? adminphoneEmail.hashCode() : 0);
        result = 31 * result + (adminType != null ? adminType.hashCode() : 0);
        return result;
    }
}
