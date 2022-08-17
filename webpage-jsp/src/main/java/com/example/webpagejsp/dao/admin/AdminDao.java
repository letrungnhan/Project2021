/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.dao.admin;

import com.example.webpagejsp.context.DBContext;
import com.example.webpagejsp.entity.*;
import com.example.webpagejsp.services.AdminServices;
import com.example.webpagejsp.util.UserUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDao implements AdminServices {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Manage User
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
            return admin;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return admin;

    }

    public List<User> pagingManagerUser(int index) {
        List<User> listUser = new ArrayList<>();
        try {
            String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE, ROLE_NAME, ROLE_DESC\n" +
                    "from [QUANLYGEAR].[dbo].[USERS] INNER JOIN [QUANLYGEAR].[dbo].[USER_ROLES] ON USERS.ROLE_ID = USER_ROLES.ID\n" +
                    "ORDER BY USERS.ROLE_ID  OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
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
                listUser.add(acc);
            }
            return listUser;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<User> getListAccounts() {
        try {
            String query = "SELECT USERS.ID, USERNAME, PASS_WORD , ROLE_ID, EMAIL,ADDRESSS,TELEPHONE, ROLE_NAME, ROLE_DESC \n" +
                    "from [QUANLYGEAR].[dbo].[USERS] INNER JOIN [QUANLYGEAR].[dbo].[USER_ROLES] ON USERS.ROLE_ID = USER_ROLES.ID\n";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
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

    //    Manage Product
    @Override
    public void createProduct(AdminProduct product) {
        String query = "INSERT INTO dbo.PRODUCT (P_ID, P_NAME,P_DESC,SKU,CATEGORY_ID,INVENTORY_ID,PRICE,DISCOUNT_ID)\n" +
                " values (?,?,?,?,?,?,?,?)";

        try {
            UserUtil userUtil = new UserUtil();
            String productID = "PT" + userUtil.generateId();
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getProductDesc());
            ps.setString(4, product.getSKU());
            ps.setString(5, product.getCategoryID());
            ps.setString(6, product.getInventoryID());
            ps.setDouble(7, product.getPrice());
            ps.setString(8, product.getDiscountID());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public void createUser(User user) {
        String query = "INSERT INTO dbo.USERS (ID, USERNAME,PASS_WORD,ROLE_ID,EMAIL,ADDRESSS,TELEPHONE)\n" +
                " values (?,?,?,?,?,?,?)";

        try {
            UserUtil userUtil = new UserUtil();
            String userID = "US" + userUtil.generateId();
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getRoleId());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getAddress());
            ps.setInt(7, user.getPhoneNumber());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateProduct(AdminProduct product, String productID) {
        String query = " UPDATE PRODUCT SET P_NAME =?\n" +
                ", P_DESC =?\n" +
                ", CATEGORY_ID=?\n" +
                ",INVENTORY_ID=?\n" +
                "   ,PRICE=?\n" +
                ",DISCOUNT_ID=?\n" +
                " WHERE P_ID=?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getProductName());
            ps.setString(2, product.getProductDesc());
            ps.setString(3, product.getCategoryID());
            ps.setString(4, product.getInventoryID());
            ps.setDouble(5, product.getPrice());
            ps.setString(6, product.getDiscountID());
            ps.setString(7, productID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<AdminProduct> getAllProduct() {
        List<AdminProduct> list = new ArrayList<>();
        String query = "SELECT  * FROM PRODUCT";
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

    public List<AdminProduct> pagingAdminProduct(int index) {
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

    public List<ImageProduct> pagingAdminProductImage(int index) {
        List<ImageProduct> listImage = new ArrayList<>();

        try {
            String query = "SELECT P_NAME , ID, PRODUCT_ID, URL_IMG FROM PRODUCT INNER JOIN IMAGES ON IMAGES.PRODUCT_ID = PRODUCT.P_ID\n" +
                    "ORDER BY IMAGES.PRODUCT_ID  OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY\n";
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                ImageProduct a = new ImageProduct(
                        rs.getString("P_NAME"),
                        rs.getString("ID"),
                        rs.getString("PRODUCT_ID"),
                        rs.getString("URL_IMG"));
                listImage.add(a);
            }
            return listImage;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<ImageProduct> getAllProductImage() {
        List<ImageProduct> list = new ArrayList<>();
        String query = "SELECT DISTINCT P_NAME , ID, PRODUCT_ID, URL_IMG FROM PRODUCT INNER JOIN IMAGES ON IMAGES.PRODUCT_ID = PRODUCT.P_ID";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                ImageProduct a = new ImageProduct(
                        rs.getString("P_NAME"),
                        rs.getString("ID"),
                        rs.getString("PRODUCT_ID"),
                        rs.getString("URL_IMG"));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Category> getListCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM CATEGORY";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category a = new Category(
                        rs.getString("ID"),
                        rs.getString("C_NAME"));
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void deleteProduct(String productID) {
        String query = "DELETE FROM PRODUCT WHERE P_ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void deleteImageProduct(String imageProductID) {
        String query = "DELETE FROM IMAGES WHERE ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageProductID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public Category loadProductCategory(String categoryID) {
        String query = "  SELECT * FROM CATEGORY WHERE ID= ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(
                        rs.getString("ID"),
                        rs.getString("C_NAME"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public void updateCategory(Category category, String categoryID) {
        String query = " UPDATE CATEGORY SET C_NAME =?\n" +
                "                WHERE ID=?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category.getCategoryName());
            ps.setString(2, categoryID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteUser(String userID) {
        String query = "DELETE FROM USERS WHERE ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();
        }

    }

    @Override
    public void updateUser(User user, String userID) {
        String query = " UPDATE USERS SET USERNAME =?\n" +
                ", PASS_WORD =?\n" +
                ", ROLE_ID=?\n" +
                ",EMAIL=?\n" +
                "   ,ADDRESSS=?\n" +
                ",TELEPHONE=?\n" +
                " WHERE ID=?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getRoleId());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getAddress());
            ps.setInt(6, user.getPhoneNumber());
            ps.setString(7, userID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateDiscount(Discount discount, String discountID) {
        String query = " UPDATE DISCOUNT SET ID= ?, D_NAME=?,DISCOUNT_PERCENT=?,ACTIVE=?\n" +
                "WHERE ID=?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, discount.getDiscountID());
            ps.setString(2, discount.getDiscountName());
            ps.setFloat(3, discount.getDiscountPercent());
            ps.setString(4, discount.getDiscountActive());
            ps.setString(5, discountID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public AdminProduct loadProductByID(String pid) {

        String query = "SELECT * FROM PRODUCT \n" +
                "WHERE P_ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AdminProduct(
                        rs.getString("P_ID"),
                        rs.getString("P_NAME"),
                        rs.getString("P_DESC"),
                        rs.getString("SKU"),
                        rs.getString("CATEGORY_ID"),
                        rs.getString("INVENTORY_ID"),
                        rs.getDouble("PRICE"),
                        rs.getString("DISCOUNT_ID"));
            }
        } catch (Exception e) {
        }

        return null;

    }

    public ImageProduct loadImageProductByID(String imageID) {
        String query = "SELECT P_NAME , ID, PRODUCT_ID, URL_IMG FROM PRODUCT INNER JOIN IMAGES ON IMAGES.PRODUCT_ID = PRODUCT.P_ID\n" +
                "  WHERE IMAGES.ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, imageID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ImageProduct(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));

            }
        } catch (Exception e) {
        }

        return null;
    }

    public void updateProductImage(ImageProduct imageProduct, String imageId) {
        String query = " UPDATE IMAGES SET URL_IMG =?\n" +
                "                WHERE ID=?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageProduct.getUrlImage());
            ps.setString(2, imageId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void createImageProduct(ImageProduct imageProduct) {
        String query = " INSERT INTO IMAGES (ID , PRODUCT_ID, URL_IMG)\n" +
                " VALUES (?,?,?)\n";

        try {
            UserUtil userUtil = new UserUtil();
            String imageProductID = "IMG" + userUtil.generateId();
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageProductID);
            ps.setString(2, imageProduct.getProductID());
            ps.setString(3, imageProduct.getUrlImage());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void createCategoryProduct(Category category) {
        String query = " INSERT INTO CATEGORY (ID , C_NAME)\n" +
                " VALUES (?,?)\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category.getCategoryID());
            ps.setString(2, category.getCategoryName());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCategoryProduct(String categoryID) {
        String query = "DELETE FROM CATEGORY WHERE ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User loadUserByID(String userID) {
        String query = "  SELECT * FROM USERS  WHERE ID =?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getString("ID"),
                        rs.getString("USERNAME"),
                        rs.getString("PASS_WORD"),
                        rs.getString("ROLE_ID"),
                        rs.getString("EMAIL"),
                        rs.getString("ADDRESSS"),
                        rs.getInt("TELEPHONE"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Discount> getListDiscount() {
        List<Discount> list = new ArrayList<>();
        String query = "SELECT * FROM DISCOUNT";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Discount a = new Discount(
                        rs.getString("ID"),
                        rs.getString("D_NAME"),
                        rs.getFloat("DISCOUNT_PERCENT"),
                        rs.getString("ACTIVE")
                );
                list.add(a);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Discount loadInforDiscount(String discountID) {
        String query = " SELECT * FROM [dbo].[DISCOUNT]\n" +
                "WHERE ID=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, discountID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Discount(
                        rs.getString("ID"),
                        rs.getString("D_NAME"),
                        rs.getFloat("DISCOUNT_PERCENT"),
                        rs.getString("ACTIVE"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;


    }

    public static void main(String[] args) {
        AdminDao adminDao = new AdminDao();
        System.out.println(adminDao.loadInforDiscount("DC040"));
    }

    public void createDiscount(Discount discount) {
        String query = " INSERT INTO DISCOUNT (ID , D_NAME,DISCOUNT_PERCENT,ACTIVE)\n" +
                " VALUES (?,?,?,?)\n";
        try {

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, discount.getDiscountID());
            ps.setString(2, discount.getDiscountName());
            ps.setFloat(3, discount.getDiscountPercent());
            ps.setString(4, discount.getDiscountActive());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteDiscount(String discountID) {
        String query = "DELETE FROM DISCOUNT WHERE ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, discountID);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}