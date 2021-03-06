package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by raylinares on 12/20/16.
 */
@WebServlet(name = "controllers.EditProfile", urlPatterns = "/editprofile")
public class EditProfile extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/editprofile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");

        String bio = request.getParameter("bio");
        String skills = request.getParameter("skills");
        user.setBio(bio);
        user.setSkills(skills);
        DaoFactory.getUsersDao().updateUser(user);
        response.sendRedirect("/profile");



    }
}
