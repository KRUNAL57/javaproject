<%-- 
    Document   : user_logout
    Created on : 4 Mar, 2019, 6:44:06 PM
    Author     : krunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>