package com.ssh.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pricings {
    private int expensesId;
    private String expensesName;
    private Double expenses;
    private Double rent;
    private String expensesDescibe;

    @Id
    @Column(name = "expensesID", nullable = false)
    public int getExpensesId() {
        return expensesId;
    }

    public void setExpensesId(int expensesId) {
        this.expensesId = expensesId;
    }

    @Basic
    @Column(name = "expensesName", nullable = true, length = 255)
    public String getExpensesName() {
        return expensesName;
    }

    public void setExpensesName(String expensesName) {
        this.expensesName = expensesName;
    }

    @Basic
    @Column(name = "expenses", nullable = true, precision = 0)
    public Double getExpenses() {
        return expenses;
    }

    public void setExpenses(Double expenses) {
        this.expenses = expenses;
    }

    @Basic
    @Column(name = "rent", nullable = true, precision = 0)
    public Double getRent() {
        return rent;
    }

    public void setRent(Double rent) {
        this.rent = rent;
    }

    @Basic
    @Column(name = "expensesDescibe", nullable = true, length = 255)
    public String getExpensesDescibe() {
        return expensesDescibe;
    }

    public void setExpensesDescibe(String expensesDescibe) {
        this.expensesDescibe = expensesDescibe;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Pricings pricings = (Pricings) o;

        if (expensesId != pricings.expensesId) return false;
        if (expensesName != null ? !expensesName.equals(pricings.expensesName) : pricings.expensesName != null)
            return false;
        if (expenses != null ? !expenses.equals(pricings.expenses) : pricings.expenses != null) return false;
        if (rent != null ? !rent.equals(pricings.rent) : pricings.rent != null) return false;
        if (expensesDescibe != null ? !expensesDescibe.equals(pricings.expensesDescibe) : pricings.expensesDescibe != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = expensesId;
        result = 31 * result + (expensesName != null ? expensesName.hashCode() : 0);
        result = 31 * result + (expenses != null ? expenses.hashCode() : 0);
        result = 31 * result + (rent != null ? rent.hashCode() : 0);
        result = 31 * result + (expensesDescibe != null ? expensesDescibe.hashCode() : 0);
        return result;
    }
}
