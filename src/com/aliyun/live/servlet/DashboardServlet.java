package com.aliyun.live.servlet;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zoujuan on 2016/8/14.
 */
public class DashboardServlet extends HttpServlet {
    public static Logger logger = Logger.getLogger(LoginServlet.class);

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    public void doProcess(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String toPage = "/dashboard.jsp";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(toPage);
        requestDispatcher.forward(request, response);
    }
}
