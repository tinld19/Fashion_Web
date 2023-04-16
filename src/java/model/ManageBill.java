/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;



public class ManageBill {
    private String idBill;
    private String username;
    private int status;

    public ManageBill() {
    }

    public ManageBill(String idBill,  String username, int status) {
        this.idBill = idBill;
        this.username = username;
        this.status = status;
    }

    public String getIdBill() {
        return idBill;
    }

    public void setIdBill(String idBill) {
        this.idBill = idBill;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ManageBill{" + "idBill=" + idBill + ", username=" + username + ", status=" + status + '}';
    }
    
    
}
