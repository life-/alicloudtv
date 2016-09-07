package com.aliyun.live.servlet;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zoujuan on 2016/8/12.
 */
public class LoginServlet extends HttpServlet {
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        logger.debug("username:" + username);
        logger.debug("password:" + password);
        request.getSession().setAttribute("username", username);
        request.getSession().setAttribute("password", password);
        request.setAttribute("username", username);
        request.setAttribute("password", password);

        String toPage = "/live.jsp";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(toPage);
        requestDispatcher.forward(request, response);
    }
}
