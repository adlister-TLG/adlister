package com.codeup.adlister.dao;

import com.codeup.adlister.models.Images;

import java.awt.*;

/**
 * Created by lloyd on 12/21/16.
 */
public interface Pictures {
    Images findByUserID(String userid);
    Long insert(Image image);
}
