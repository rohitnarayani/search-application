<%@page isELIgnored="false" %>

<%--
  Created by IntelliJ IDEA.
  User: rohit
  Date: 1/12/26
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Name: ${formFields.name}</h3>
<h3>Email: ${formFields.email}</h3>
<h3>Age: ${formFields.age}</h3>
<h3>DOB: ${formFields.dob}</h3>
<h3>Contact: ${formFields.contact}</h3>
<h3>Roles: ${formFields.roles}</h3>
<h3>Address: <br> street=${formFields.address.street} city=${formFields.address.city}</h3>

</body>
</html>
