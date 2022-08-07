/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.services;

import com.example.webpagejsp.entity.Admin;
import com.example.webpagejsp.entity.AdminProduct;
import com.example.webpagejsp.entity.ImageProduct;

public interface AdminServices {
    public Admin loginAdmin(String username,String password);
    public AdminProduct createProduct(AdminProduct product, ImageProduct imageProduct);
    public Admin updateProduct(String username,String password);
    public Admin deleteProduct(String username,String password);
}
