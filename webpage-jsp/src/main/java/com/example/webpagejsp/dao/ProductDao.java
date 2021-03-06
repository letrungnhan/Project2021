
package com.example.webpagejsp.dao;


import com.example.webpagejsp.context.DBContextProduct;
import com.example.webpagejsp.entity.Category;
import com.example.webpagejsp.entity.Product;

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

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "\tP_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n" +
                "WHERE CATEGORY_ID = 'CG001'";
        try {
            conn = new DBContextProduct().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)
                );
                list.add(a);
            }
            return list;
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getProductCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from CATEGORY";
        try {
            conn = new DBContextProduct().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getString(1),
                        rs.getString(2)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getListProductHot() {
        List<Product> list = new ArrayList<>();
        String query = "\n" +
                "SELECT top 3\n" +
                "\tP_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n";
        try {
            conn = new DBContextProduct().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)
                ));

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByCategoryID(String categoryID) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "\tP_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n" +
                "WHERE CATEGORY_ID = ?";
        try {
            conn = new DBContextProduct().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)
                );
                list.add(a);
            }

        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();

        List<Product> list = dao.getProductByCategoryID("CG001");
        for (Product o : list) {
            System.out.println(o);

        }
    }

}