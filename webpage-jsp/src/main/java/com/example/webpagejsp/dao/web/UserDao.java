
package com.example.webpagejsp.dao.web;

import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.entity.RoleUser;
import com.example.webpagejsp.entity.User;
import com.example.webpagejsp.util.UserUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<User> getListAccounts() {
        try {
            String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                    "from [QUANLYGEAR].[dbo].[USERS] INNER JOIN [QUANLYGEAR].[dbo].[USER_ROLES] ON USERS.ROLE_ID = USER_ROLES.ID\n";
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            List<User> list = new ArrayList<>();
            while (rs.next()) {
                User acc = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9));
                list.add(acc);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public User checkLogin(String user, String pass) {
        String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                "from USERS INNER JOIN USER_ROLES ON USERS.ROLE_ID = USER_ROLES.ID\n" +
                "WHERE USERNAME =? AND PASS_WORD=?";

        try {
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public User checkUserExist(String user) {
        String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                "from USERS INNER JOIN USER_ROLES ON USERS.ROLE_ID = USER_ROLES.ID\n" +
                "WHERE USERNAME =?";

        try {
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void register(String username, String password, String email, String address, int phoneNumber) {
        String query = "INSERT INTO USERS (ID, USERNAME,PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE)\n" +
                "values (?,?,?,'R002',?,?, ?)";
        try {
            UserUtil userUtil = new UserUtil();
            String userId = "US" + userUtil.generateId();
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, userId);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, email);
            ps.setString(5, address);
            ps.setInt(6, phoneNumber);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<RoleUser> getListRole() {
        try {
            String query = "SELECT * FROM USER_ROLES";
            connection = new DBContext().getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            List<RoleUser> list = new ArrayList<>();
            while (rs.next()) {
                RoleUser acc = new RoleUser(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3));


                list.add(acc);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
