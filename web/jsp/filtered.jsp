<%--
  Created by IntelliJ IDEA.
  User: Mohru
  Date: 31.01.2017
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>This is filtered jsp</h1>

<%
    Cookie[] cookies = request.getCookies();
    String userName = "";

    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("userName"))
            userName = cookie.getValue();
    }
%>

<div>
    <p><%= userName %>
    </p>
</div>
</body>
</html>
