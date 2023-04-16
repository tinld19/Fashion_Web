/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author ACER NITRO
 */
public class Customer {
    private String userName;
    private String name;
    private String email;
    private String phone;
    private String password;
    private String adress;
    private Date birthday;
    private int role;

    public Customer() {
    }

    public Customer(String userName, String name, String email, String phone, String password, String adress, Date birthday, int role) {
        this.userName = userName;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.adress = adress;
        this.birthday = birthday;
        this.role = role;
    }

   

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Customer{" + "userName=" + userName + ", name=" + name + ", email=" + email + ", phone=" + phone + ", password=" + password + ", adress=" + adress + ", birthday=" + birthday + ", role=" + role + '}';
    }


    
}
