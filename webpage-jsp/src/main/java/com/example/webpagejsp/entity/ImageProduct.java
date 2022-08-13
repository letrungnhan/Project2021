/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.entity;

public class ImageProduct {
    String productName;
    String imageProductID;
    String productID;
    String urlImage;

    public ImageProduct(String productName, String imageProductID, String productID, String urlImage) {
        this.productName = productName;
        this.imageProductID = imageProductID;
        this.productID = productID;
        this.urlImage = urlImage;
    }

    public ImageProduct(String productID, String imageProduct, String urlImage) {
        this.productID = productID;
        this.imageProductID = imageProduct;
        this.urlImage = urlImage;
    }

    public ImageProduct(String productID, String imageURL) {
        this.productID = productID;
        this.urlImage = imageURL;
    }


    @Override
    public String toString() {
        return "ImageProduct{" +
                "productName='" + productName + '\'' +
                ", imageProductID='" + imageProductID + '\'' +
                ", productID='" + productID + '\'' +
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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImageProductID() {
        return imageProductID;
    }

    public void setImageProductID(String imageProductID) {
        this.imageProductID = imageProductID;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }
}
