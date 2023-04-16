/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER NITRO
 */
public class Product {
    private String id;
    private String type;
    private String nameProduct;
    private double price;
    private int soLuong;
    private String img;

    public Product() {
    }

    public Product(String id, String type, String nameProduct, double price, int soLuong, String img) {
        this.id = id;
        this.type = type;
        this.nameProduct = nameProduct;
        this.price = price;
        this.soLuong = soLuong;
        this.img = img;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", type=" + type + ", nameProduct=" + nameProduct + ", price=" + price + ", soLuong=" + soLuong + ", img=" + img + '}';
    }
    
}
