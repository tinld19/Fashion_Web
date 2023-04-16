/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER NITRO
 */
public class Cart1  extends Product{
    private int quantity;
   
    public Cart1() {
    }
    public Cart1(int quantity, String id, String type, String nameProduct, double price, int soLuong, String img) {
        super(id, type, nameProduct, price, soLuong, img);
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
