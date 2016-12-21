package com.codeup.adlister.dao;

import com.codeup.adlister.models.Image;
import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by lloyd on 12/21/16.
 */
public class MySQLImagesDao implements Images{
    private Connection connection;

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
        return null;
    }

    @Override
    public Long insert(Image image) {
        return null;
    }
}
