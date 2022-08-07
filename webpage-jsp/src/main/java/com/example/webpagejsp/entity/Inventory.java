/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.entity;

public class Inventory {
    private String inventoryID;
    private int quantity;

    public Inventory(String inventoryID, int quantity) {
        this.inventoryID = inventoryID;
        this.quantity = quantity;
    }

    public Inventory() {

    }

    public String getInventoryID() {
        return inventoryID;
    }

    public void setInventoryID(String inventoryID) {
        this.inventoryID = inventoryID;
    }

    public int getQuantity() {
        return quantity;
    }

    @Override
    public String toString() {
        return "Inventory{" +
                "inventoryID='" + inventoryID + '\'' +
                ", quantity=" + quantity +
                '}';
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;

    }
}
