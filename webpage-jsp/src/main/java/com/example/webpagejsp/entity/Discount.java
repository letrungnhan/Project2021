/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.entity;

public class Discount {
    private String discountID;
    private String discountName;
    private float discountPercent;
    private String discountActive;

    public Discount(String discountID, String discountName, float discountPercent, String discountActive) {
        this.discountID = discountID;
        this.discountName = discountName;
        this.discountPercent = discountPercent;
        this.discountActive = discountActive;
    }

    public Discount(String discountName, float discountPercent, String discountActive) {
        this.discountName = discountName;
        this.discountPercent = discountPercent;
        this.discountActive = discountActive;
    }

    public String getDiscountID() {
        return discountID;
    }

    public void setDiscountID(String discountID) {
        this.discountID = discountID;
    }

    public String getDiscountName() {
        return discountName;
    }

    public void setDiscountName(String discountName) {
        this.discountName = discountName;
    }

    public float getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(float discountPercent) {
        this.discountPercent = discountPercent;
    }

    public String getDiscountActive() {
        return discountActive;
    }

    public void setDiscountActive(String discountActive) {
        this.discountActive = discountActive;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "discountID='" + discountID + '\'' +
                ", discountName='" + discountName + '\'' +
                ", discountPercent=" + discountPercent +
                ", discountActive='" + discountActive + '\'' +
                '}';
    }
}
