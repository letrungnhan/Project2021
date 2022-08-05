package com.example.webpagejsp.entity;

import java.io.Serializable;
import java.util.Objects;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private String id;
    private String username;
    private String password;
    private String roleId;
    private String email;
    private String address;
    private int phoneNumber;
    private String roleName;
    private String roleDescription;

    public User() {
    }

    public User(String id, String username, String password, String roleId, String email, String address, int phoneNumber, String roleName, String roleDescription) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.roleId = roleId;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.roleName = roleName;
        this.roleDescription = roleDescription;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
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
        return "Users{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", roleId='" + roleId + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", roleName='" + roleName + '\'' +
                ", roleDescription='" + roleDescription + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return phoneNumber == user.phoneNumber && Objects.equals(id, user.id) && Objects.equals(username, user.username) && Objects.equals(password, user.password) && Objects.equals(roleId, user.roleId) && Objects.equals(email, user.email) && Objects.equals(address, user.address) && Objects.equals(roleName, user.roleName) && Objects.equals(roleDescription, user.roleDescription);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, username, password, roleId, email, address, phoneNumber, roleName, roleDescription);
    }
}
