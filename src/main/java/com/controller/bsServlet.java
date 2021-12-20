package com.controller;

import com.service.backstage.NewnefuService;
import com.service.backstage.Newnefufactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/backstage")
public class bsServlet extends HttpServlet {
    private NewnefuService newnefuService=Newnefufactory.getBsnewnefuservice();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();

        request.setAttribute("newnefus",newnefuService.newnefus());
        request.getRequestDispatcher("/WEB-INF/jsp/backstage.jsp")
                .forward(request,response);
        session.setAttribute("jd",0);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
