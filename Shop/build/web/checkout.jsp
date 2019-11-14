<%-- 
    Document   : checkout
    Created on : Nov 13, 2019, 8:30:38 PM
    Author     : Administrator
--%>
<%@page import="model.Users" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Users users = (Users) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/shop/login.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="account">
                    <h2 class="account-in">checkout</h2>
                    <form action="CheckOutServlet" method="POST">
                        <div>
                            <span>Address *</span>
                            <input type="text" name="address">
                        </div>
                        <div>
                            <span>Payment *</span>
                            <select name="payment">
                                <option value="Bank transfer"> Bank transfer</option>
                                <option value="Live"> Live</option>
                            </select>
                        </div>
                        <input type="submit" value="Checkout">
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
