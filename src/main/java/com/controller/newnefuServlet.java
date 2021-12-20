package com.controller;

import com.service.newnefu.newnefufactory;
import com.service.newnefu.newnefuService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/newnefu")
public class newnefuServlet extends HttpServlet {
    private newnefuService newnefuservice=newnefufactory.getNewnefuservice();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("newnefus",newnefuservice.newnefus());
        request.setAttribute("newnefuneed",newnefuservice.newnefusneed());
        request.getRequestDispatcher("/WEB-INF/jsp/newnefu.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
