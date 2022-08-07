/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.dao.admin;

import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.ImageProduct;
import com.example.webpagejsp.services.AdminServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDao implements AdminServices {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public Admin loginAdmin(String user, String pass) {
        Admin admin = null;
        try {
            conn = new DBContext().getConnection();
            String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                    "from USERS INNER JOIN USER_ROLES ON USERS.ROLE_ID = USER_ROLES.ID\n" +
                    "WHERE USERNAME =? AND PASS_WORD=?";

            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                admin = new Admin();
                admin.setId(rs.getString("ID"));
                admin.setUsername(rs.getString("USERNAME"));
                admin.setPassword(rs.getString("PASS_WORD"));
                admin.setRoleId(rs.getString("ROLE_ID"));
                admin.setEmail(rs.getString("EMAIL"));
                admin.setPhoneNumber(rs.getInt("TELEPHONE"));
                admin.setRoleName(rs.getString("ROLE_NAME"));
                admin.setRoleDescription(rs.getString("ROLE_DESC"));


            }

        } catch (Exception e) {

        }

        return admin;

    }

    @Override
    public AdminProduct createProduct(AdminProduct product, ImageProduct imageProduct) {
        return null;
    }


    public List<AdminProduct> getAllProduct() {
        List<AdminProduct> list = new ArrayList<>();
        String query = "SELECT TOP 10 * FROM PRODUCT";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                AdminProduct a = new AdminProduct(
                        rs.getString("P_ID"),
                        rs.getString("P_NAME"),
                        rs.getString("P_DESC"),
                        rs.getString("SKU"),
                        rs.getString("CATEGORY_ID"),
                        rs.getString("INVENTORY_ID"),
                        rs.getDouble("PRICE"),
                        rs.getString("DISCOUNT_ID"));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<AdminProduct> pagingAdmin(int index) {
        List<AdminProduct> list = new ArrayList<>();
        String query = "SELECT * FROM PRODUCT\n" +
                "ORDER BY PRODUCT.P_ID\n" +
                "OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                AdminProduct a = new AdminProduct(
                        rs.getString("P_ID"),
                        rs.getString("P_NAME"),
                        rs.getString("P_DESC"),
                        rs.getString("SKU"),
                        rs.getString("CATEGORY_ID"),
                        rs.getString("INVENTORY_ID"),
                        rs.getDouble("PRICE"),
                        rs.getString("DISCOUNT_ID"));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public Admin updateProduct(String username, String password) {
        return null;
    }

    @Override
    public Admin deleteProduct(String username, String password) {
        return null;
    }

    public static void main(String[] args) throws Exception {
        AdminDao adminDao = new AdminDao();
        List<AdminProduct> admin = adminDao.pagingAdmin(1);
        System.out.println(admin);
    }
}
