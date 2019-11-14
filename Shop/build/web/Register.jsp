<%-- 
    Document   : Register
    Created on : Oct 22, 2019, 3:47:29 PM
    Author     : w7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 1000);
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
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        $(document).ready(function () {
                    var x_timer;
            $("#email").keyup(function (e) {
            clearTimeout(x_timer);
            var user_name = $(this).val();
            x_timer = setTimeout(function () {
            check_username_ajax(user_name);
        }, 1000);
        });
        function check_username_ajax(username) {
            $("#user-result").html('<img src="img/ajax-loader.gif" />');
            $.post('CheckEmailServlet', {'username': username}, function (data) {
                    $("#user-result").html(data);
        });
        }
        });
        </scrip 
        </script>				

        </head>

        <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="account">
                    <h2 class="account-in">THÔNG TIN ĐĂNG KÝ TÀI KHOẢN</h2>
                    <form action="UsersServlet" method="POST">
                        <div>
                            <p> Họ và tên(*):</p>
                            <input type="text" required="yes" maxlength="50" name="fullname">
                        </div> 	
                        <div>			
                            <p class="name-in">Emai(*):</p>
                            <input type="text" maxlength="50" name="email" id="email"> 
                            <span id="user-result"></span>
                        </div>			
                        <div> 	
                            <p class="mail">Password(*):</p>
                            <input type="text" required="yes" maxlength="50" name="password"> 
                        </div>
                        <div> 
                            <p class="word"> Nhập lại Password(*):</p>
                            <input type="password" required="yes" maxlength="50" name="repassword">
                        </div>	
                        <input type="hidden" value="Đăng ký" name="commnad">
                        <input type="submit" value="Đăng ký"> 
                    </form>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
