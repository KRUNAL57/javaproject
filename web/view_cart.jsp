<%-- 
    Document   : user_order
    Created on : 5 Mar, 2019, 6:03:32 PM
    Author     : krunal
--%>

<%@page import="POJOS.ProductMaster"%>
<%@page import="java.util.List"%>
<%@page import="POJOS.Cart"%>
<%@page import="POJOS.Cart"%>
<%@page import="DAO.CartDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isThreadSafe="true" %>
<%@include  file="header.jsp" %>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
                            <form action="checkout.jsp" method="post">
				<table class="table table-bordered table-hover table-responsive">
                                    <%
                                        Boolean flag=false;
                                        if(null==session.getAttribute("userObject")){
                                            out.print("<tr>");
                                            out.print("<td>Please Login First</td>");
                                            out.print("</tr>");
                                            flag=true;
                                        }else{
                                            List<Cart> lstCart = CartDAO.fetchCartItems(session.getId());
                                            
                                            System.out.println("View Cart");
                                            lstCart = CartDAO.fetchCartItems(session.getId());
                                            if(lstCart.size()>0){
                                                for(Cart c: lstCart){
                                                    //Cart c =  lstCart.get(z);
                                                    ProductMaster m = c.getProductMaster();
                                                    
                                                    System.out.println(m.getProductName());
                                                    //out.print(m);
                                                    out.print("<tr>"
                                                    +"<td><img src=''></td>"
                                                    +"<td>"+m.getProductName()+"</td>"
                                                            +"<td>"+c.getQuantity()+"</td>"
                                                            +"<td>"+m.getPrice()+"</td>"
                                                            +"<td><a class='delete'><i class='fa fa-trash' style='font-size:20px;'></i></a></td>"
                                                                    +"</tr>"); 
                                                }
                                                out.print("</table>");
                                                out.print("<input type='submit' class='primary-btn order-submit' value='Checkout'>");
                                            }else{
                                                out.print("<h4><center>Oops! No items in Cart.</h4></center>");
                                                flag=true;
                                            }
                                            
                                            
                                            
                                        }
                                        if(flag){
                                            out.print("</table>");
                                        }
                                    %>
 
                                
                                </form>
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>


						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>

