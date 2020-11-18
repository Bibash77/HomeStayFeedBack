<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Test</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body class="container">

<%--<div class="pull-right">--%>
<%--<a href="<c:url value="/default/add" />" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add</a>--%>
<%--</div>--%>

<table class="table table-striped table-hover">
    <thead>
    <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Salary</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.firstName}</td>
            <td>${customer.lastName}</td>
            <td>${customer.salary}</td>
            <td>
                <a class="btn btn-success" href="<c:url value="/api/edit/${customer.id}" /> "><span
                        class="glyphicon glyphicon-pencil"></span></a>
                <a class="btn btn-danger" href="<c:url value="/api/delete/${customer.id}" /> "><span
                        class="glyphicon glyphicon-trash"></span></a>

            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
