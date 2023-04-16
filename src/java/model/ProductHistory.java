/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

public class ProductHistory {
    private String idProduct;
    private String name;
    private double price;
    private int quantity;
    private Date date;
    private String img;
    private double total; 
    private int status;
    
    public ProductHistory() {
    }

    public ProductHistory(String name, double price, int quantity, Date date, String img, double total, int status,String idProduct) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.date = date;
        this.img = img;
        this.total = total;
        this.status = status;
        this.idProduct=idProduct;
    }

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "ProductHistory{" + "idProduct=" + idProduct + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", date=" + date + ", img=" + img + ", total=" + total + ", status=" + status + '}';
    }


    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    
    
    
}
