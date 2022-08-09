
package com.example.webpagejsp.services;

import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.ImageProduct;

public interface AdminServices {
    public Admin loginAdmin(String username, String password);

    public void createProduct(AdminProduct product);

    public Admin updateProduct(String username, String password);

    public void deleteProduct(String productID);
}
