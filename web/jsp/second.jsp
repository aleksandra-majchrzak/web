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
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js'></script>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="web2/css/styles.css"/>
</head>

<body>

<jsp:include page="fragment.jsp"/>

<h1 class="some-class">SecondServlet</h1>
<h3 id="some-id"> to jest strona z second servlet</h3>

<form role="form" action="/second" method="post" class="second-div">
    <div class="form-group">
        <div class="input-group">
            <c:choose>
                <c:when test="${users != null}">
                    <select name="userToDeleteId" id="userToDeleteId">
                        <c:forEach items="${users}" var="_user" varStatus="loop">
                            <option value="${_user.id}">${_user.name}</option>
                        </c:forEach>
                    </select>
                    <script type="text/javascript"> $('#userToDeleteId').val('${users[4].id}') </script>
                </c:when>
                <c:otherwise>
                    <select name="userToDeleteId" id="userToDeleteId">
                        <option value="0"></option>
                    </select>
                </c:otherwise>
            </c:choose>
        </div>

    </div>
    <a href="#">
        <button type="submit" class="btn btn-default accept-button" aria-label="Left Align">
            <input type="hidden" name="userToDelete2" value="${user.id}"/>
            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
        </button>
    </a>
</form>

<div id="idNiezalogowany">

</div>

<div id="zalogowany">

</div>


<c:set var="userSession" value="${pageContext.session.getAttribute('loggedUserSession')}"/>
<c:set var="userApplication" value="${pageContext.servletContext.getAttribute('loggedUserApplication')}"/>

<div class="panel panel-success my-panel hidden">
    <div class="panel-heading">User</div>
    <div class="panel-body">
        <p>${userSession.name} ${userSession.surname}</p>
    </div>
</div>

<div class="panel panel-success my-panel">
    <div class="panel-heading">User</div>
    <div class="panel-body">
        <p>${userApplication.name} ${userApplication.surname}</p>
    </div>
</div>

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
