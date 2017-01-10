<%--
  Created by IntelliJ IDEA.
  User: Mohru
  Date: 10.01.2017
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title2</title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="web2/css/styles.css"/>
</head>

<body>
<h1 class="some-class">SecondServlet</h1>
<h3 id="some-id"> to jest strona z second servlet</h3>

<div class="panel panel-default my-panel">
    <div class="panel-heading">Panel heading</div>
    <div class="panel-body">
        <p>panel body text</p>
    </div>
</div>

<div class="panel panel-default my-panel">
    <div class="panel-heading">User</div>
    <div class="panel-body">
        <p>${user.name} ${user.surname}</p>
    </div>
</div>

</body>
</html>
