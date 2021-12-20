package com.controller;

import com.entity.Newnefu;
import com.entity.Notice;
import com.entity.User;
import com.sun.source.tree.TryTree;
import com.util.DataSourceUtils;

import com.service.newnefu.newnefufactory;
import com.service.newnefu.newnefuService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/index")
public class indexServlet extends HttpServlet {
    private newnefuService newnefuService=newnefufactory.getNewnefuservice();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("newnefuneed",newnefuService.newnefusneed());
        request.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
