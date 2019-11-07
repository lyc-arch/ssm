package com.ssh.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Numbermanage {
    private int id;
    private String phonenumber;
    private String numbertype;
    private Integer expenses;

    @Id
    @Column(name = "Id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "phonenumber", nullable = true, length = 255)
    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    @Basic
    @Column(name = "numbertype", nullable = true, length = 25)
    public String getNumbertype() {
        return numbertype;
    }

    public void setNumbertype(String numbertype) {
        this.numbertype = numbertype;
    }

    @Basic
    @Column(name = "expenses", nullable = true)
    public Integer getExpenses() {
        return expenses;
    }

    public void setExpenses(Integer expenses) {
        this.expenses = expenses;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Numbermanage that = (Numbermanage) o;

        if (id != that.id) return false;
        if (phonenumber != null ? !phonenumber.equals(that.phonenumber) : that.phonenumber != null) return false;
        if (numbertype != null ? !numbertype.equals(that.numbertype) : that.numbertype != null) return false;
        if (expenses != null ? !expenses.equals(that.expenses) : that.expenses != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (phonenumber != null ? phonenumber.hashCode() : 0);
        result = 31 * result + (numbertype != null ? numbertype.hashCode() : 0);
        result = 31 * result + (expenses != null ? expenses.hashCode() : 0);
        return result;
    }
}
