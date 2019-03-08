<%-- 
    Document   : submit_order
    Created on : 6 Mar, 2019, 9:38:54 PM
    Author     : krunal
--%>

<%@page import="POJOS.Orders"%>
<%@page import="POJOS.ProductMaster"%>
<%@page import="POJOS.Cart"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CartDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.OrderDAO"%>
<%@page import="POJOS.OrderMaster"%>
<%@page import="java.util.Date"%>
<%@page import="POJOS.UserMaster"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   //getting amount from request
    float amount = Float.parseFloat(request.getParameter("amount"));
   //usermaster object from session
    UserMaster e = (UserMaster) session.getAttribute("userObject");
   //creating date object
    Date d = new Date();
    //Creating ordermaster object and generating orderid
   OrderMaster o = new OrderMaster(e,e.getAddress(),d,amount,null,null);
   //inserting ordermaster object in database
   OrderDAO.createOrder(o);
   //fetching cart items of current session
   List<Cart> lstOrder = CartDAO.fetchCartItems(session.getId());
   //fetching Object of Ordermaster for last orderid
   OrderMaster orderId = OrderDAO.getOrderId(e, d);
   out.print(orderId);
   //inserting into Orders table for mapping orderid,productid and quantity
   for(int z = 0;z<lstOrder.size();z++){
       ProductMaster m = lstOrder.get(z).getProductMaster();
       Orders order = new Orders(orderId,m,lstOrder.get(z).getQuantity());
       OrderDAO.insertOrder(order);
   }
   CartDAO.removeFromCart(session.getId());
   response.sendRedirect("index.jsp");
%>