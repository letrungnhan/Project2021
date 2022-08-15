
/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.dao.web;


import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.entity.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
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
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
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
            conn = new DBContext().getConnection();//mo ket noi voi sql
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
            conn = new DBContext().getConnection();//mo ket noi voi sql
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
            conn = new DBContext().getConnection();//mo ket noi voi sql
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

    public Product getProductByID(String pid) {

        String query = "SELECT\n" +
                "\tP_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n" +
                "WHERE P_ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)
                );

            }

        } catch (Exception e) {
        }

        return null;


    }

    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "\tP_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "   PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID \n" +
                "WHERE P_NAME LIKE ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
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

    public int getTotalCountProduct() {
        String query = "SELECT COUNT(*) FROM PRODUCT    ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getTotalCountProductImage() {
        String query = "SELECT COUNT(*) FROM IMAGES  ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Inventory> getInventoryList() {
        List<Inventory> list = new ArrayList<>();
        String query = "select * from INVENTORY";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Inventory(rs.getString(1),
                        rs.getInt(2)
                ));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Discount> getDiscountList() {
        List<Discount> list = new ArrayList<>();
        String query = "select * from DISCOUNT";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Discount(rs.getString(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getString(4)));

            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT P_ID, P_NAME, P_DESC, PRICE , URL_IMG , CATEGORY_ID\n" +
                "FROM\n" +
                "PRODUCT INNER JOIN IMAGES ON PRODUCT.P_ID = IMAGES.PRODUCT_ID\n" +
                "ORDER BY PRODUCT.P_ID\n" +
                " OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
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
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();


    }

    public int getTotalCountUser() {
        String query = "SELECT COUNT(*) FROM USERS   ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }


}