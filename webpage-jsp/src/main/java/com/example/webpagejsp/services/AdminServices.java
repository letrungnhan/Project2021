
package com.example.webpagejsp.services;

import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.Category;
import com.example.webpagejsp.entity.User;

public interface AdminServices {
    Admin loginAdmin(String username, String password);

    void createProduct(AdminProduct product);

    void createUser(User user);

    void updateProduct(AdminProduct product, String productID);

    void deleteProduct(String productID);

    Category loadProductCategory(String categoryID);

    void updateCategory(Category categoryName, String categoryID);

    void deleteUser(String userID);

    void updateUser(User user, String userID);
}
