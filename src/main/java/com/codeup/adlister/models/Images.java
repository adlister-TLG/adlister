package com.codeup.adlister.models;

/**
 * Created by lloyd on 12/21/16.
 */
public class Images {
    private long id;
    private String userId;
    private String location;
    private String url;

    public Images(long id, String userId, String location, String url) {
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
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
