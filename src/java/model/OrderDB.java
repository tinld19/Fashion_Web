/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ACER NITRO
 */
public class OrderDB extends DBContext{
    public boolean inserOrder(Order order){
        boolean result=false;
        try {
            String sql="INSERT INTO [dbo].[OrderProduct]\n" +
"           ([idBill]\n" +
"           ,[idProduct]\n" +
"           ,[quantity]\n" +
"           ,[date])"+
"     VALUES (?,?,?,?)";
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setString(1, order.getOrderID());
            stmt.setString(2, order.getId());
            stmt.setInt(3, order.getQuantity());
            stmt.setString(4, order.getDate());
            stmt.executeUpdate();
            result=true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return result;
    }
}
