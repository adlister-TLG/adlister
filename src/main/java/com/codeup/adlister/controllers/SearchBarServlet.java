package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.SearchBar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Created by nicholasturner on 12/21/16.
 */
@WebServlet(name = "SearchBarServlet", urlPatterns = "/search")
public class SearchBarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SearchBarServlet() {
        super();

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SearchBar sq = new SearchBar("ads","username", "codeup");

        sq.doSearch();
        String table;

        table = sq.getHTMLTable();


        request.setAttribute("table", table);
        String url ="/search.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }
}

