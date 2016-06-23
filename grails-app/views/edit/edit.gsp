<%--
  Created by IntelliJ IDEA.
  User: bholenath
  Date: 22/6/16
  Time: 11:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Update Info</title>
    <meta name="layout" content="afterLoginNav">
</head>

<body>

<g:link controller="edit" action="delete">Delete Account</g:link>
<g:form class="form-horizontal" controller="edit" action="update">
    <div class="form-group">
        <label for="id" class="col-sm-2 control-label">ID</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="id" id="id" value="${current.id}">
        </div>
    </div>
    <div class="form-group">
        <label for="firstName" class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="firstName" id="firstName" value="${current.firstName}">
        </div>
    </div>
    <div class="form-group">
        <label for="lastName" class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="lastName" id="lastName" value="${current.lastName}">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" name="email" id="inputEmail3" value="${current.email}">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" name="password" id="password"
                   placeholder="Enter New Password (Optional)" value="${current.password}">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </div>
</g:form>
</body>
</html>