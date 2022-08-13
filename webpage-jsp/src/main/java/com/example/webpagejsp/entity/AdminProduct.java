
package com.example.webpagejsp.entity;
public class AdminProduct {
    private String productId;
    private String productName;
    private String productDesc;
    private String SKU;
    private String categoryID;
    private String inventoryID;
    private double price;
    private String discountID;
    private ImageProduct imageProduct;

    public AdminProduct(String productName, String productDesc, String categoryID, String inventoryID, double price, String discountID) {
        this.productName = productName;
        this.productDesc = productDesc;
        this.categoryID = categoryID;
        this.inventoryID = inventoryID;
        this.price = price;
        this.discountID = discountID;
    }

    public AdminProduct(String productId, String productName, String productDesc, String SKU, String categoryID, String inventoryID, double price, String discountID) {
        this.productId = productId;
        this.productName = productName;
        this.productDesc = productDesc;
        this.SKU = SKU;
        this.categoryID = categoryID;
        this.inventoryID = inventoryID;
        this.price = (int) price;
        this.discountID = discountID;
    }

    public AdminProduct(String productId, String productName, String productDesc, String SKU, String categoryID, String inventoryID, double price, String discountID, ImageProduct imageProduct) {
        this.productId = productId;
        this.productName = productName;
        this.productDesc = productDesc;
        this.SKU = SKU;
        this.categoryID = categoryID;
        this.inventoryID = inventoryID;
        this.price = price;
        this.discountID = discountID;
        this.imageProduct = imageProduct;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getSKU() {
        return SKU;
    }

    public void setSKU(String SKU) {
        this.SKU = SKU;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getInventoryID() {
        return inventoryID;
    }

    public void setInventoryID(String inventoryID) {
        this.inventoryID = inventoryID;
    }

    public double getPrice() {
        return (int) price;
    }

    public void setPrice(double price) {
        this.price = (int) price;
    }

    public String getDiscountID() {
        return discountID;
    }

    public void setDiscountID(String discountID) {
        this.discountID = discountID;
    }

    public ImageProduct getImageProduct() {
        return imageProduct;
    }

    public void setImageProduct(ImageProduct imageProduct) {
        this.imageProduct = imageProduct;
    }

    @Override
    public String toString() {
        return "AdminProduct{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", productDesc='" + productDesc + '\'' +
                ", SKU='" + SKU + '\'' +
                ", categoryID='" + categoryID + '\'' +
                ", inventoryID='" + inventoryID + '\'' +
                ", price=" + (int) price +
                ", discountID='" + discountID + '\'' +
                ", imageProduct=" + imageProduct +
                '}';
    }

}
