/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.dao;

import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.services.AdminServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao implements AdminServices {
    private final Connection connection;
    private String query;
    private PreparedStatement ps;
    private ResultSet rs;

    public AdminDao(Connection connection) {
        this.connection = connection;
    }

    @Override
    public Admin loginAdmin(String user, String pass) {
        Admin admin = null;
        try {
            query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                    "from USERS INNER JOIN USER_ROLES ON USERS.ROLE_ID = USER_ROLES.ID\n" +
                    "WHERE USERNAME =? AND PASS_WORD=?";

            ps = this.connection.prepareStatement(query);
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

    public static void main(String[] args) throws Exception {
        AdminDao adminDao = new AdminDao(new DBContext().getConnection());
        Admin admin = adminDao.loginAdmin("admin","1");
        System.out.println(admin);
    }
}
