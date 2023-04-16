/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ACER NITRO
 */
public class CustomerDB extends DBContext {

    public CustomerDB() {
        super();
    }

    public Customer login(String user) throws Exception {
        Customer c = null;
        try {
            String sql = "SELECT *"
                    + "  FROM [dbo].[Customer]\n"
                    + "WHERE username=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                c = new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return c;
    }

    public List<Customer> getAll() {
        List<Customer> list = new ArrayList<>();
        String sql = "SELECT *"
                + "  FROM [dbo].[Customer]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer c = new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void add(Customer c) throws Exception {
        String sql = "INSERT INTO [dbo].[Customer]\n"
                + "           ([username]\n"
                + "           ,[name1]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[password1]\n"
                + "           ,[address]\n"
                + "           ,[birthday]\n"
                + "           ,[role])\n"
                + "     VALUES "
                + "           (?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getUserName());
            st.setString(2, c.getName());
            st.setString(3, c.getEmail());
            st.setString(4, c.getPhone());
            st.setString(5, c.getPassword());
            st.setString(6, c.getAdress());
            java.sql.Date sqlDate = new java.sql.Date(c.getBirthday().getTime());
            st.setDate(7, sqlDate);
            st.setInt(8, c.getRole());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateCustomer(Customer c) throws SQLException {
        String sql = "UPDATE [dbo].[Customer]\n"
                + "   SET  [name1] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[password1] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[birthday] = ?\n"
                + " WHERE username=?";

        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setString(1, c.getName());
        stmt.setString(2, c.getEmail());
        stmt.setString(3, c.getPhone());
        stmt.setString(4, c.getPassword());
        stmt.setString(5, c.getAdress());
        java.util.Date utilDate = new java.util.Date();
        stmt.setDate(6, new java.sql.Date(utilDate.getTime()));
        stmt.setString(7, c.getUserName());
        stmt.executeUpdate();
    }

    public Customer getCustomerByEmail(String email) throws SQLException {
        Customer c = null;
        String sql = "SELECT *"
                + "  FROM [dbo].[Customer]\n"
                + "WHERE email=?";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setString(1, email);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            c = new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8));
            return c;
        }
        return null;
    }

    public Customer getCustomerByName(String name) throws SQLException {
        Customer c = null;
        String sql = "SELECT *"
                + "  FROM [dbo].[Customer]\n"
                + "WHERE username=?";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setString(1, name);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            c = new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8));
            return c;
        }
        return null;
    }

    public static void main(String[] args) throws Exception {
        CustomerDB cdb = new CustomerDB();
        Customer c = cdb.getCustomerByName("iamhaao");
        System.out.println(c.toString());
    }
}
