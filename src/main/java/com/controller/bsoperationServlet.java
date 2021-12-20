package com.controller;

import com.mysql.cj.Session;
import com.service.backstage.NewnefuService;
import com.service.backstage.Newnefufactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.Inet4Address;

@WebServlet("/backstage-operation")
public class bsoperationServlet extends HttpServlet {
    private NewnefuService newnefuService= Newnefufactory.getBsnewnefuservice();
    private int jd=0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        int type = Integer.parseInt(request.getParameter("type"));
        int id = Integer.parseInt(request.getParameter("id"));
        int operation = Integer.parseInt(request.getParameter("operation"));
        request.getRequestDispatcher("/WEB-INF/jsp/backstage.jsp")
                .forward(request, response);
        session.setAttribute("jd",0);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        int type = Integer.parseInt(request.getParameter("type"));
        int id = Integer.parseInt(request.getParameter("id"));
        int operation = Integer.parseInt(request.getParameter("operation"));
        if (type == 1) {
            if (operation == 0) {
                request.setAttribute("newnefu",newnefuService.getnewnefu(id));
                request.getRequestDispatcher("/WEB-INF/jsp/backstage-operation.jsp")
                        .forward(request, response);
            }
            //增加
            if(operation==1){
                newnefuService.addnewnefu(request.getParameter("tittle"),
                        request.getParameter("content"),request.getParameter("provider"),
                        request.getParameter("img"));
                jd=1;
                session.setAttribute("jd",jd);
                response.sendRedirect(request.getContextPath() + "/backstage");
            }
            //删除
            if(operation==2){
                newnefuService.deletenewnefu(id);
                jd=2;
                session.setAttribute("jd",jd);
                response.sendRedirect(request.getContextPath() + "/backstage");
            }
            //修改
            if(operation==3){
                newnefuService.alternewnefu(request.getParameter("tittle"),
                        request.getParameter("content"),request.getParameter("provider"),
                        request.getParameter("img"),id);
                jd=3;
                session.setAttribute("jd",jd);
                response.sendRedirect(request.getContextPath() + "/backstage");
            }
            //查看
            if(operation==4){
                request.setAttribute("newnefu",
                        newnefuService.newnefusfind(request.getParameter("tittle")));
                jd=4;
                session.setAttribute("jd",jd);
                request.getRequestDispatcher("/WEB-INF/jsp/backstage-operation.jsp")
                        .forward(request, response);
            }
        }
    }
}
