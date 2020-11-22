<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Test</title>
</head>
<style>
    .simple-login-container{
        width:300px;
        max-width:100%;
        margin:50px auto;
    }
    .simple-login-container h2{
        text-align:center;
        font-size:20px;
    }

    .simple-login-container .btn-login{
        background-color:#FF5964;
        color:#fff;
    }
    a{
        color:#fff;
    }
</style>
<body class="background">
<%--<div class="container">
    <div class="row">
        <div class="col-md-12 min-vh-100 d-flex flex-column justify-content-center">
            <div class="row">
                <div class="col-lg-6 col-md-8 mx-auto">

                    <!-- form card login -->
                    <div class="card rounded shadow shadow-sm">
                        <div class="card-header">
                            <h3 class="mb-0">Login</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" autocomplete="off" id="formLogin" action="<c:url value="/login" />"
                                  method="POST">
                                <div class="form-group">
                                    <label for="uname1">Username</label>
                                    <input type="text" class="form-control form-control-lg rounded-0" name="username"
                                           id="uname1" required="">
                                </div>
                                <div class="form-group">
                                    <label for="pwd1">Password</label>
                                    <input type="password" class="form-control form-control-lg rounded-0" id="pwd1"
                                           name="password">
                                </div>
                                <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#registerModal">
                                    Register
                                </a>
                                <button type="submit" class="btn btn-success float-right" id="btnLogin">Login</button>
                            </form>
                        </div>
                        <!--/card-block-->
                    </div>
                    <!-- /form card login -->

                </div>


            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>--%>
<!--/container-->


<div class="simple-login-container" style="margin-top: 150px;">
    <form class="form" autocomplete="off" id="formLogin" action="<c:url value="/login" />"
          method="POST">
    <h2>Login Form</h2>
    <div class="row">
        <div class="col-md-12 form-group">
            <input type="text" class="form-control" placeholder="Username" name="username">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 form-group">
            <input type="password" placeholder="Enter your Password" class="form-control" name="password">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 form-group">
            <input type="submit" class="btn btn-success" placeholder="Enter your Password" style="width: 100%;">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 form-group">
            <a style="width: 100%;" href="#" class="btn btn-primary" data-toggle="modal" data-target="#registerModal">
                Register
            </a>
        </div>
    </div>
    </form>
    <p class="text-center text-danger">${error}</p>
</div>

<%--register modal--%>
<!-- Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header background">
                <h5 class="modal-title" id="registerModalLabel">Register Form</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form name="registerForm" id="registerForm">
                    <div class="form-group">
                        <label for="fullName" class="col-form-label">Full Name:</label>
                        <input type="text" name="fullName" class="form-control" id="fullName">
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-form-label">Username:</label>
                        <input type="text" name="userName" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">Password:</label>
                        <input type="password" class="form-control" id="password" name="pasword">
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-form-label">Address:</label>
                        <input type="text" name="address" class="form-control" id="address">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn background" onclick="registerUser()">Submit</button>
            </div>
        </div>
    </div>
</div>
</body>
<script>
   function registerUser() {
       let user = {};
       let valid = true;
       const userData = $('#registerForm').serializeArray(); // return array of form data
       userData.forEach(data => {
           user[data.name] = data.value;
           if(data.value == null || data.value == '') {
               valid = false;
           }
       });
       if (!valid){
           alert("please fill all data");
           return;
       }
       console.log(user);
       $.ajax({
           url:"${pageContext.request.contextPath}/user/register",
           type:"post",
           contentType:"application/json",
           data: JSON.stringify(user),
           success:function(data){
               alert(data);
               console.log(data);
           },

       });
   }
</script>
</html>
