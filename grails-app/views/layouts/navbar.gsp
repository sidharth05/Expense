<%--
  Created by IntelliJ IDEA.
  User: bholenath
  Date: 22/6/16
  Time: 9:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="An example decorator" /></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.mn.js"/>
    <g:layoutHead />
</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Form</a>
        </div>
        <div class="container collapse navbar-collapse" id="bs">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <g:link controller="register" action="register">Register</g:link>
                </li>
                <li>
                    <g:link>Login</g:link>
                </li>
                <li>
                    <g:link>Edit</g:link>
                </li>
                <li>
                    <g:link>Logout</g:link>
                </li>
                <li>
                    <g:link controller="register" action="list">List</g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <g:layoutBody/>
</div>
</body>
</html>