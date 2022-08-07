/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.entity;

public class ImageProduct {
    String productID;
    String imageProductID;
    String urlImage;

    public ImageProduct(String productID, String imageProduct, String urlImage) {
        this.productID = productID;
        this.imageProductID = imageProduct;
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "ImageProduct{" +
                "productID=" + productID +
                ", imageProduct='" + imageProductID + '\'' +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getImageProduct() {
        return imageProductID;
    }

    public void setImageProduct(String imageProduct) {
        this.imageProductID = imageProduct;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }
}
