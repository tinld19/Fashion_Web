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
public class FeedbackDB extends DBContext{

    public FeedbackDB() {
    }
    
    public ArrayList<Feedback> getAll(){
        ArrayList<Feedback> listFeedback=new ArrayList<>();
        String sql="select * from feedback";
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            ResultSet rs=stmt.executeQuery();
            while (rs.next()) {                
                Feedback fb=new Feedback(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                listFeedback.add(fb);
            }
        } catch (Exception e) {
        }
        
        return listFeedback;
    }
    public ArrayList<Feedback> getFeedBack(String idProduct){
        ArrayList<Feedback> listFeedback=new ArrayList<>();
        String sql="select * from feedback where idProduct=? Order by feedback.date1 desc";
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setString(1, idProduct);
            ResultSet rs=stmt.executeQuery();
            while (rs.next()) {                
                Feedback fb=new Feedback(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                listFeedback.add(fb);
            }
        } catch (SQLException e) {
        }
        
        return listFeedback;
    }
    public void insert(Feedback fb){
        String sql="INSERT INTO [dbo].[feedback]\n" +
"           ([idProduct]\n" +
"           ,[username]\n" +
"           ,[srcip]\n" +
"           ,[date1])\n" +
"     VALUES (?,?,?,?)";
        
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
            stmt.setString(1, fb.getIdProduct());
            stmt.setString(2, fb.getUsername());
            stmt.setString(3, fb.getScrip());
            stmt.setString(4, fb.getDate()); 
            stmt.execute();
        } catch (SQLException e) {
        }
    }
    public static void main(String[] args) {
        FeedbackDB fbdb=new FeedbackDB();
        ArrayList<Feedback> list=fbdb.getAll();
        int count = 0;
        for (Feedback feedback : list) {
            count++;
        }
        System.err.println(count);
    }
}
