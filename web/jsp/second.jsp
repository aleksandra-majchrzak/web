<%--
  Created by IntelliJ IDEA.
  User: Mohru
  Date: 10.01.2017
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title2</title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="web2/css/styles.css"/>
</head>

<body>

<jsp:include page="fragment.jsp"/>

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

<div class="panel panel-success my-panel">
    <div class="panel-heading">User</div>
    <div class="panel-body">
        <p>${user.name} ${user.surname}</p>
    </div>
</div>


<c:forEach items="${users}" var="_user" varStatus="loop">
    <div class="panel panel-success my-panel">
        <div class="panel-heading">User</div>
        <div class="panel-body">
            <p>${_user.name} ${_user.surname}</p>
        </div>
    </div>
</c:forEach>


<form role="form" action="/second" method="post" class="second-div">
    <div class="form-group">
        <input type="text" name="name" placeholder="name" class="form-control"/>
    </div>
    <div class="form-group">
        <input type="text" name="surname" placeholder="surname" class="form-control"/>
    </div>
    <a href="#">
        <button type="submit" class="btn btn-default accept-button" aria-label="Left Align">
            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
        </button>
    </a>
</form>

</body>
</html>
