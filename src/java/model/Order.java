/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER NITRO
 */
public class Order extends Product{
   private String orderID;
   private int quantity;
   private String date;

    public Order() {
    }

    public Order(String orderID, int quantity, String date) {
        this.orderID = orderID;
        this.quantity = quantity;
        this.date = date;
    }

    public Order(String orderID, String userName, int quantity, String date, String id, String type, String nameProduct, double price, int soLuong, String img) {
        super(id, type, nameProduct, price, soLuong, img);
        this.orderID = orderID;
        this.quantity = quantity;
        this.date = date;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", quantity=" + quantity + ", date=" + date + '}';
    }
   
     
}
