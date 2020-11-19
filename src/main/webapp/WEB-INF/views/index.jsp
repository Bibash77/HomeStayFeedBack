<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Test</title>
</head>
<body class="background">
<div class="container">
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
</div>
<!--/container-->

<%--register modal--%>
<!-- Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header background">
                <h5 class="modal-title" id="registerModalLabel">Register</h5>
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
                        <label for="phoneNumber" class="col-form-label">Phone Number:</label>
                        <input type="number" name="phoneNumber" class="form-control" id="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-form-label">Address:</label>
                        <input type="text" name="address" class="form-control" id="address">
                    </div>
                    <div class="form-group">
                        <label for="gender" class="col-form-label">Gender:</label>
                        <select class="form-control" name="gender" id="gender">
                            <option selected hidden>Select Gender</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn background" onclick="registerUser()">Register</button>
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
