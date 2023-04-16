/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ManageBillDB extends DBContext{

    public ManageBillDB() {
    }
    
    public ArrayList<ManageBill> getAll(){
        ArrayList<ManageBill> listBill=new ArrayList<>();
        String sql="select b.idBill,c.username,b.status\n" +
"from Bill b,Customer c\n" +
"where  b.username=c.username";
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            ResultSet rs=stmt.executeQuery();
            while (rs.next()) {                
                ManageBill mb=new ManageBill(rs.getString(1), rs.getString(2), rs.getInt(3));
                listBill.add(mb);
            }
        } catch (Exception e) {
        }
        return listBill;
    }
}
