package com.example.webpagejsp.control.dao;

import com.example.webpagejsp.control.context.DBContextProduct;
import com.example.webpagejsp.control.entity.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginDao {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getListAccounts() {

        try {
            String query = "select * from useraccount";
            connection = new DBContextProduct().getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            List<Account> accountList = new ArrayList<>();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2));
                accountList.add(a);
            }
        } catch (Exception e) {

        }
        return null;

    }


    public Account checkLogin(String user, String pass) {
        try {
            String query =
                    "select * from useraccount where username = ? and password=?";


            connection = new DBContextProduct().getConnection();

            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2));
                return a;

            }

        } catch (Exception e) {

        }
        return null;

    }

    public static void main(String[] args) {
        LoginDao accountDAO = new LoginDao();
        List<Account> accountList = accountDAO.getListAccounts();
        for (Account a : accountList) {
            System.out.println(a);
        }
    }
}
