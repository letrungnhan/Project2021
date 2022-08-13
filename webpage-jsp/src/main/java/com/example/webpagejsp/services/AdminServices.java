
package com.example.webpagejsp.services;

import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.Category;

public interface AdminServices {
    Admin loginAdmin(String username, String password);

    void createProduct(AdminProduct product);

    void updateProduct(AdminProduct product, String productID);

    void deleteProduct(String productID);

    Category loadProductCategory(String categoryID);

    void updateCategory(Category categoryName, String categoryID);
}
