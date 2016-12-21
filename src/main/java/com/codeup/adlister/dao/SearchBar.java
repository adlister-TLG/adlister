package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by nicholasturner on 12/21/16.
 */
public class SearchBar {
    private Connection connection = null;
    private ResultSet results;

    public SearchBar(String dbName, String username, String password) {

        String url = "jdbc:mysql://localhost:8080/" + dbName;

        //setting up driver

        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.connection = DriverManager.getConnection(url, username, password);

        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public void doSearch(){

        String query = "SELECT title, description FROM ads where title = ?";

        try {

            PreparedStatement stmt = this.connection.prepareStatement(query);
            this.results = stmt.executeQuery();


        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public String getHTMLTable(){
        String table ="";

        table += "<table border =1>";

        try {
            while(this.results.next()) {
                Long user_id = results.getLong("user_id");;
                String title= results.getString("title");
                String description= results.getString("description");;
                Ad ad = new Ad(user_id, title, description);

                table += "<tr>";
                table += "<td>";
                table +=    ad.getTitle();
                table += "</td>";

                table += "<td>";
                table +=    ad.getDescription();
                table += "</td>";


                table += "<td>";
                table +="<a href = update?userID=" +  ad.getUserId() +">update</a> <a href = delete?userID="+ ad.getUserId() + ">delete</a>";

                table += "</td>";

                table += "</tr>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        table += "</table>";

        return table;


    }

}

