<%-- 
    Document   : validateLogin
    Created on : 3 Mar, 2019, 6:27:54 PM
    Author     : krunal
--%>

<%@page import="POJOS.UserMaster"%>
<%@page import="DAO.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    UserMaster e = UserDAO.loginuser(username, password);
    if(e!=null){
        session.setAttribute("userObject",e);
        response.sendRedirect("index.jsp");
    }else{
        response.sendRedirect("login.jsp?check=0");
    }
%>