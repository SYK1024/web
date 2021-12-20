package com.controller;

import com.entity.Teacher;
import com.util.DataSourceUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/getteacher")
public class getteacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Teacher teacher=null;
        String sql="select * from teacher where id=?";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql)
        ){
            preparedStatement.setString(1,request.getParameter("uid"));
            try(ResultSet resultSet=preparedStatement.executeQuery()) {
                while (resultSet.next()){
                    teacher=new Teacher();
                    teacher.setId(resultSet.getInt("id"));
                    teacher.setName(resultSet.getString("name"));
                    teacher.setImg(resultSet.getString("img"));
                    teacher.setIntroduction(resultSet.getString("introduction"));
                    teacher.setLevel(resultSet.getInt("level"));
                    teacher.setCreate_time(resultSet.getTimestamp("create_time"));
                }
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        request.setAttribute("teacher",teacher);
        request.setAttribute("level",teacher.getLevel());
        request.getRequestDispatcher("/WEB-INF/jsp/teacher-1.jsp")
                .forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
