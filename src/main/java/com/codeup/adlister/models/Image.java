package com.codeup.adlister.models;

/**
 * Created by lloyd on 12/21/16.
 */
public class Image {
    private long id;
    private long userId;
    private String location;
    private String url;

    public Image(long id, long userId, String location, String url) {
        this.id = id;
        this.userId = userId;
        this.location = location;
        this.url = url;
    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
