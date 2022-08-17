/*
 * Copyright (c) 2022.
 *
 */

package com.example.webpagejsp.entity;

public class RoleUser {
    private String ID;
    private String roleName;
    private String roleDescription;

    public RoleUser(String ID, String roleName, String roleDescription) {
        this.ID = ID;
        this.roleName = roleName;
        this.roleDescription = roleDescription;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    @Override
    public String toString() {
        return "RoleUser{" +
                "ID='" + ID + '\'' +
                ", roleName='" + roleName + '\'' +
                ", roleDescription='" + roleDescription + '\'' +
                '}';
    }
}
