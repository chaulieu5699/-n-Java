<%-- 
    Document   : Products
    Created on : Oct 22, 2019, 3:43:42 PM
    Author     : w7
--%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>

    </head>
    <body>
        
        <%
            ProductDAO productDAO=new ProductDAO();
            String category_id="";
            if(request.getParameter("category")!=null){
                category_id=request.getParameter("category");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        
        		<div class="container">
			<div class="products">
					<h2 class=" products-in">DANH MỤC SẢN PHẨM</h2>
					<div class=" top-products">
                                        <%
                                            for (Product p : productDAO.getListProductByCategory(Long.parseLong(category_id))){
                                            %>
						<div class="col-md-3 md-col">
							<div class="col-md">
                                                            <a href="Single.?product=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt="<%=p.getProductName()%>" /></a>
                                                            
								<div class="top-content">
									<h5><a href="Single.?product=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
                                                                        
									<div class="white">
                                                                            <a href="Single.jsp" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
                                                                                <p class="dollar"><span><%=p.getProductPrice()%></span> <span class="in-dollar">VNĐ</span> </p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
                                            <%
                                            }
                                            %>
					<div class="clearfix"></div>
					</div>

			</div>
		</div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
