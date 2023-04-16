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
public class BillDB  extends DBContext{
    public void insertBill(Bill bill){
        try {
            String sql="INSERT INTO [dbo].[Bill]\n" +
"           ([idBill]\n" +
"           ,[username]\n" +
"           ,[total],[status])\n" +
"     VALUES\n" +
"           (?,?,?,?)";
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setString(1, bill.getIdBill());
            stmt.setString(2, bill.getUsername());
            stmt.setDouble(3, bill.getTotal());
            stmt.setInt(4,0);
            stmt.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public void updateStatus(String idBill){
        String sql="UPDATE [dbo].[Bill]\n" +
"   SET [status] = ?\n" +
" WHERE idBill=?";
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setInt(1, 1);
            stmt.setString(2, idBill);
            stmt.executeUpdate();
        } catch (SQLException e) {
        }       
    }
    public static void main(String[] args) {
        BillDB b=new BillDB();
        b.updateStatus("nxwqDm");
    }
}
