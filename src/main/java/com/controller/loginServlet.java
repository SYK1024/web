package com.controller;

import com.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").
                forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("pwd");
        String url;
        if ("admin".equals(userName) && "admin".equals(password)) {
            User u = new User("小明");
            request.getSession().setAttribute("user", u);
            url = "/backstage";
        } else {
            url = "/login";
        }
        response.sendRedirect(request.getContextPath() + url);
    }
}
