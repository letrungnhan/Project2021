/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.util;

import java.util.Random;

public class UserUtil {
    long idCounter = System.currentTimeMillis() - (System.currentTimeMillis()-99);

    private String getRandomNumber() {
        int number = (new Random()).nextInt(999);
        String id = number + "";

        if (number < 10) {
            id = "00" + number;
        } else if (number < 100) {
            id = "0" + number;
        }

        return id;
    }

    public String generateId() {
        ++this.idCounter;
        return this.idCounter + this.getRandomNumber();
    }

    public static void main(String[] args) {
        UserUtil ust = new UserUtil();
        System.out.println("PT"+ust.generateId());
        ;
    }

}
