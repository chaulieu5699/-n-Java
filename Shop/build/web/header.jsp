<%-- 
    Document   : header
    Created on : Oct 22, 2019, 3:25:46 PM
    Author     : w7
--%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart" %>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Users"%>


<%@page import="dao.usersDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
        %>
        <%
            Users users = new Users();
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            } else {
                users.setUserEmail("");
            }
        %> 
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">	
                    <div class="header-top-in">			
                        <div class="logo">
                            <a href="Index.jsp"><img src="images/Nu'est_logo.png" alt=" " width="50%"></a>
                        </div>
                        <div class="header-in">
                            <ul class="icon1 sub-icon1">
                                <li><a href="#"> <%=users.getUserEmail()%></a> </li>
                                <li  ><a href="#">WISH LIST (0)</a> </li>
                                <li  ><a href="#">  MY ACCOUNT</a></li>
                                <li ><a href="#" > SHOPPING CART</a></li>
                                <li > <a href="checkout.jsp" >CHECKOUT</a> </li>	
                                <li>
                                    <div class="cart">
                                        <a href="#" class="cart-in"><img src="images/14.png" alt=" " width="25px" height="25px" ></a>
                                        <span>
                                            <%=cart.countItem()%>
                                        </span>
                                    </div>
                                    <ul class="sub-icon1 list">
                                        <h3>Recently added items</h3>
                                        <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                                        %>
                                        <div class="cart_box">
                                            <div class="message">
                                                <div class="alert-close"> </div>
                                                <div class="list_img">
                                                    <img src="<%=list.getValue().getProduct().getProductImage()%>"
                                                         class="img-responsive" alt="">
                                                </div>
                                                <div class="list_desc">
                                                    <h4>
                                                        <a href="CartServlet?command=remove&productID=
                                                           <%=list.getValue().getProduct().getProductID()%>">
                                                            <%=list.getValue().getProduct().getProductName()%></a>
                                                    </h4>
                                                    <%=list.getValue().getSoluong()%> x
                                                    <span class="actual">
                                                        $<%=list.getValue().getProduct().getProductPrice()%></span>
                                                </div>

                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <%}%>
                                        <div class="total">
                                            <div class="total_left">Cart Subtotal: </div>
                                            <div class="total_right">$<%=cart.total()%></div>
                                            <div class="clearfix"> </div>
                                        </div>
                                        <div class="login_buttons">
                                            <div class="check_button">
                                                <a href="checkout.jsp">Check out</a>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </ul>
                                    </div>
                                    <div class="clearfix"> </div>
                                    </div>
                                    </div>
                                    </div>
                                    <div class="header-bottom">
                                        <div class="container">
                                            <div class="h_menu4">
                                                <a class="toggleMenu" href="#">Menu</a>
                                                <ul class="nav">
                                                    <li class="active"><a href="index.html"><i> </i>Desktops</a></li>
                                                    <li ><a href="#" >Danh mục</a>
                                                        <ul class="drop">
                                                            <%
                                                                for (Category c : categoryDAO.getListCategory()) {
                                                            %>
                                                            
                                                            <li><a href="Products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                                <%
                                                                    }
                                                                %>
                                                        </ul>
                                                    </li> 						
                                                    <li><a href="products.html" > News</a></li>            
                                                  
                                                    <li><a href="contact.html" >Contact </a></li>

                                                </ul>
                                                <script type="text/javascript" src="js/nav.js"></script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="header-bottom-in">
                                        <div class="container">
                                            <div class="header-bottom-on">
                                                <p class="wel"><a href="#">Welcome visitor you can login or create an account.</a></p>
                                                <div class="header-can">
                                                    <ul class="social-in">
                                                        <li><a href="#"><i> </i></a></li>
                                                        <li><a href="#"><i class="facebook"> </i></a></li>
                                                        <li><a href="#"><i class="twitter"> </i></a></li>					
                                                        <li><a href="#"><i class="skype"> </i></a></li>
                                                    </ul>	
                                                    <div class="down-top">		
                                                        <select class="in-drop">
                                                            <option value="Dollars" class="in-of">Dollars</option>
                                                            <option value="Euro" class="in-of">Euro</option>
                                                            <option value="Yen" class="in-of">Yen</option>
                                                        </select>
                                                    </div>
                                                    <div class="search">
                                                        <form>
                                                            <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                        this.value = '';
                                                                    }" >
                                                            <input type="submit" value="">
                                                        </form>
                                                    </div>

                                                    <div class="clearfix"> </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    </body>
                                    </html>
