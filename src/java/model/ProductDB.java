package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ACER NITRO
 */
public class ProductDB extends DBContext {

    public ProductDB() {
    }

    public ArrayList<Product> getAll() {
        ArrayList<Product> listProduct = new ArrayList<>();
        String sql = "SELECT [idProduct]\n"
                + "      ,[idType]\n"
                + "      ,[nameProduct]\n"
                + "      ,[price]\n"
                + "      ,[soLuong]\n"
                + "      ,[img]\n"
                + "  FROM [dbo].[Product]";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6));
                listProduct.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return listProduct;
    }

    public ArrayList<Product> getProductByType(String type) throws SQLException {
        ArrayList<Product> list1 = new ArrayList<>();
        String sql = "SELECT [idProduct]\n"
                + "      ,[idType]\n"
                + "      ,[nameProduct]\n"
                + "      ,[price]\n"
                + "      ,[soLuong]\n"
                + "      ,[img]\n"
                + "  FROM [dbo].[Product]\n";
        if (type.equals("all")) {
            sql += "WHERE 1=1";
        } else {
            sql += "WHERE idType='" + type + "'";
        }
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
//            stmt.setString(1, type);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6));
                list1.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }

    public Product getProductByID(String id) {
        String sql = "select * from Product Where idProduct=?";
        Product p = new Product();
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                p.setId(rs.getString(1));
                p.setType(rs.getString(2));
                p.setNameProduct(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setSoLuong(rs.getInt(5));
                p.setImg(rs.getString(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public static void main(String[] args) throws SQLException {
        ProductDB pdb = new ProductDB();
        ArrayList<Product> bestseller=pdb.bestSeller();
        for (Product product : bestseller) {
            System.out.println(product.toString());
        }
    }

    public ArrayList<Product> bestSeller() {
        ArrayList<Product> bestseller = new ArrayList<>();
        ArrayList<String> list = new ArrayList<>();
        String sql = "select top(6) OrderProduct.idProduct,count(OrderProduct.quantity) from OrderProduct \n"
                + "group by OrderProduct.idProduct\n"
                + "order by count(OrderProduct.quantity) desc";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));
            }
            for (int i = 0; i < list.size(); i++) {
                Product p = null;
                p=getProductByID(list.get(i));
                bestseller.add(p);
            }
        } catch (Exception e) {
        }

        return bestseller;
    }

    public List<Cart1> getCartProducts(ArrayList<Cart1> list) {
        List<Cart1> listCart = new ArrayList<>();
        try {
            if (list.size() > 0) {
                for (Cart1 cart1 : list) {
                    String sql = "select * from Product where idProduct=?";
                    PreparedStatement stmt = connection.prepareStatement(sql);
                    stmt.setString(1, cart1.getId());
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        Cart1 row = new Cart1();
                        row.setId(rs.getString(1));
                        row.setType(rs.getString(2));
                        row.setNameProduct(rs.getString(3));
                        row.setPrice(rs.getDouble(4));
                        row.setSoLuong(rs.getInt(5));
                        row.setQuantity(cart1.getQuantity());
                        row.setImg(rs.getString(6));
                        listCart.add(row);
                    }
                }
            }
        } catch (Exception e) {
        }
        return listCart;
    }

    public double getTotalMoney(ArrayList<Cart1> list) throws SQLException {
        double sum = 0;
        if (list.size() > 0) {
            for (Cart1 c : list) {
                String sql = "Select price from Product where idProduct=?";
                PreparedStatement stmt = connection.prepareStatement(sql);
                stmt.setString(1, c.getId());
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    sum += rs.getDouble("price") * c.getQuantity();
                }
            }
        }
        return sum;
    }

    public ArrayList<Product> getProductByName(String name) {
        ArrayList<Product> list=new ArrayList<>();
        String sql="select * from Product where nameProduct LIKE ? ";
        
        try {
            PreparedStatement stmt=connection.prepareStatement(sql);
             stmt.setString(1,"%"+ name+"%");
              ResultSet rs=stmt.executeQuery();
              while (rs.next()) {                
                 Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6));
                 list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    };

}
