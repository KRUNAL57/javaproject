<%-- 
    Document   : submit_cart
    Created on : 4 Mar, 2019, 8:26:29 PM
    Author     : krunal
--%>

<%@page import="POJOS.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String id = request.getParameter("id");
    Cart c= new Cart();
%>