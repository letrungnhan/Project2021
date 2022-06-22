
package com.example.webpagejsp.control.dao;


import com.example.webpagejsp.control.context.DBContextLogin;
import com.example.webpagejsp.control.context.DBContextProduct;
import com.example.webpagejsp.control.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author letrungnhan
 */
public class ProductDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContextProduct().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public List<Category> getAllCategory() {
//        List<Category> list = new ArrayList<>();
//        String query = "select * from Category";
//        try {
//            conn = new DBContext().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Category(rs.getInt(1),
//                        rs.getString(2)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
//
//    public Product getLast() {
//        String query = "select top 1 * from product\n"
//                + "order by id desc";
//        try {
//            conn = new DBContext().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                return new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getAllProduct();
        for (Product o : list) {
            System.out.println("Hello");
            System.out.println(o);

        }
    }

}