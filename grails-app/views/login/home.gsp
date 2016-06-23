<%--
  Created by IntelliJ IDEA.
  User: bholenath
  Date: 23/6/16
  Time: 2:02 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home</title>
    <meta name="layout" content="afterLoginNav">
</head>

<body>
<div class="jumbotron">
    <h1>Welcome Home</h1>
</div>
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${current}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}<br></td>
            <td>${user.lastName}<br></td>
            <td>${user.email}<br></td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>