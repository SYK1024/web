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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/teacher")
public class teacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Teacher> teachers=new ArrayList<>();
        String sql="select * from teacher";
        try(Connection connection= DataSourceUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet resultSet=preparedStatement.executeQuery()) {
            while (resultSet.next()){
                Teacher teacher=new Teacher(resultSet.getInt("id"),resultSet.getString("name"),
                        resultSet.getString("img"),resultSet.getInt("level"));
                teachers.add(teacher);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        request.setAttribute("teachers",teachers);
        request.getRequestDispatcher("/WEB-INF/jsp/teacher.jsp")
                .forward(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
