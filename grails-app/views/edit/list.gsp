<%--
  Created by IntelliJ IDEA.
  User: bholenath
  Date: 13/6/16
  Time: 1:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="layout" content="afterLoginNav">
    <title>List Page</title>
</head>
<body>
    <h1>Data Updated</h1>

    <div>
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
            <g:each in="${allUsers}" var="user">
                <tr>
                    <td>
                        <g:link controller="edit" action="edit" id="${user.id}">${user.id}</g:link>
                    </td>
                    <td>${user.firstName}<br></td>
                    <td>${user.lastName}<br></td>
                    <td>${user.email}<br></td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

<content tag="side-content">
    div2 - Notice that the div2 element is after div1, in the HTML code. However, since div1 is floated to the left, this happens: the text in div2 is floated around div1, and div2 surrounds the whole thing.
</content>
</body>

</html>