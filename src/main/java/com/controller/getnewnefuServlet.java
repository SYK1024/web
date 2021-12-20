package com.controller;

import com.service.newnefu.newnefufactory;
import com.service.newnefu.newnefuService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/getnewnefu")
public class getnewnefuServlet extends HttpServlet {
    private newnefuService newnefuService=newnefufactory.getNewnefuservice();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        request.setAttribute("newnefu",newnefuService.getnewnefu(id));
        request.setAttribute("newnefuneed",newnefuService.newnefusneed());
        request.getRequestDispatcher("/WEB-INF/jsp/newnefu-1.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
