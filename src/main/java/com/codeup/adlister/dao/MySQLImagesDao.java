package com.codeup.adlister.dao;

import com.codeup.adlister.models.Image;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLImagesDao implements Images{
    private Connection connection = null;

    public MySQLImagesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Image> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM images");
            ResultSet rs = stmt.executeQuery();
            return displayImagesFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all images", e);
        }
    }

    @Override
    public Long insert(Image image) {
        try {
            String insertQuery = "INSERT INTO images('user_id', 'img_location', 'url') VALUES(?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, image.getUserId());
            stmt.setString(2, image.getLocation());
            stmt.setString(3, image.getUrl());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error uploading a new image.", e);
        }
    }
    private Image extractImg(ResultSet rs) throws SQLException {
        return new Image(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("img_location"),
                rs.getString("url")
        );
    }

    private List<Image> displayImagesFromResults(ResultSet rs) throws SQLException {
        List<Image> imgages = new ArrayList<>();
        while (rs.next()) {
            imgages.add(extractImg(rs));
        }
        return imgages;
    }
}
