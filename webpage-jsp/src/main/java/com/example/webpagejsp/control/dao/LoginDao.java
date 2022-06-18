package dao;

import dbconnect.DBContext;
import entity.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkLogin(String username, String password) {
        try {
            String query = "select * from userAccount where username =?and password =?";
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString(1), rs.getString(2));
                return a;
            }

        } catch (Exception e) {

        }
        return null;

    }
}
