/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ACER NITRO
 */
public class ProductHistoryDB extends DBContext{
    
    
   public ArrayList<ProductHistory> listBuy(String user){
       ArrayList<ProductHistory> list=new ArrayList<>();
       
       String sql="select Product.nameProduct,Product.price,OrderProduct.quantity,OrderProduct.date,Product.img,(Product.price*OrderProduct.quantity)as total,Bill.status,Product.idProduct from OrderProduct,Product,Bill\n" +
"where OrderProduct.idProduct=Product.idProduct and OrderProduct.idBill=Bill.idBill\n" +
"and Bill.username=? Order by OrderProduct.date desc";
       try {
        PreparedStatement stmt=connection.prepareStatement(sql);
       stmt.setString(1, user);
       ResultSet rs=stmt.executeQuery();  
           while (rs.next()) {               
               ProductHistory ph=new ProductHistory(rs.getString(1), rs.getDouble(2),rs.getInt(3), rs.getDate(4), rs.getString(5), rs.getDouble(6),rs.getInt(7),rs.getString(8));
               list.add(ph);
           }
       } catch (SQLException e) {
       }
       
       return list;
   }
    public static void main(String[] args) {
        ArrayList<ProductHistory> list=new ArrayList<>();
        ProductHistoryDB phdb=new ProductHistoryDB();
        list=phdb.listBuy("iamhaao");
        for (ProductHistory ph : list) {
            System.out.println(ph.toString());
        }
    }
}
