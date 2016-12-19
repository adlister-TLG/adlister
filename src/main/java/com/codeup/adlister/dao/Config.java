package com.codeup.adlister.dao;


public class Config {
    private String url = "jdbc:mysql://localhost/adlister_db";
    private String username = "root";
    private String password = "codeup";


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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


}