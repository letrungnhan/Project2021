package com.example.webpagejsp.dao;

import com.example.webpagejsp.context.DBContextLogin;
import com.example.webpagejsp.entity.Account;

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
            String query = "select * from account";
            connection = new DBContextLogin().getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            List<Account> list = new ArrayList<>();
            while (rs.next()) {
                Account acc = new Account(rs.getString(1), rs.getString(2));
                list.add(acc);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkLogin(String user, String pass) throws Exception {
        try {
            String query = "select * from account where username = ? and password=?";
            connection = new DBContextLogin().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2));
                return a;
            }
            return null;
        } catch (Exception e) {

        }
        return null;

    }

    public static void main(String[] args) throws Exception {
        LoginDao accountDAO = new LoginDao();
        List<Account> accountList = accountDAO.getListAccounts();
        for (Account a : accountList) {
            System.out.println(a);
        }
    }
}
