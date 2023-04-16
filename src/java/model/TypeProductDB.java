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
public class TypeProductDB extends DBContext{
    public TypeProduct getTypeById(String type){
        String sql="SELECT [idType]\n" +
"      ,[nameType]\n" +
"  FROM [dbo].[TypeProduct]\n"+
                "WHERE idType=?";
        TypeProduct tp=new TypeProduct();
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setString(1, type);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                String idType=rs.getString(1);
                String nameType=rs.getString(2);
                tp.setIdType(idType);
                tp.setNameType(nameType);
            }
        } catch (SQLException e) {
        }
        return tp;
    }
    public static void main(String[] args) {
        TypeProductDB tdb=new TypeProductDB();
        TypeProduct e=tdb.getTypeById("sh");
        System.out.println(e.toString());
    }
    
    public ArrayList<TypeProduct> getAllType(){
        ArrayList<TypeProduct> listType=new ArrayList<>();
         String sql="select * from TypeProduct";
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            ResultSet rs=stmt.executeQuery();
            while (rs.next()) {                
                TypeProduct tp=new TypeProduct(rs.getString(1), rs.getString(2));
                listType.add(tp);
            }
        } catch (SQLException e) {
        }
        return listType;
    }
    
}
