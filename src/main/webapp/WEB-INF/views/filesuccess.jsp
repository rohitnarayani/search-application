<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: rohit
  Date: 1/16/26
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>${msg}</h3>
    <img src="<c:url value='/resources/images/${filename}'/>" alt="Uploaded Image" height="400px" width="400px"/>
</body>
</html>