<%-- 
    Document   : submit_cart
    Created on : 4 Mar, 2019, 8:26:29 PM
    Author     : krunal
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.CartDAO"%>
<%@page import="POJOS.ProductMaster"%>
<%@page import="POJOS.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String id = request.getParameter("id");
    ProductMaster m = new ProductMaster();
    m.setProductId(Integer.parseInt(id));
    Cart c = CartDAO.fetchProduct(session.getId(), m);
    Cart d = null;
    if(c!=null){
        int j = c.getQuantity();
         c.setQuantity(++j);
         out.print(j);
         d = c;
    }else{
        
        d= new Cart(m,session.getId().toString(),Byte.parseByte("1"),Byte.parseByte("1"),1);
    }
    
    CartDAO.createCart(d);
%>