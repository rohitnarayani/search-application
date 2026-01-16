<%--
  Created by IntelliJ IDEA.
  User: rohit
  Date: 1/12/26
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Complex Form</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-..." crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <form action="uploadimage" method="post" enctype="multipart/form-data">
        <h1 class="mb-4">Image Upload</h1>

        <div class="form-group mb-3">
                <label for="formFile" class="form-label">Select your Image</label>
                <input class="form-control" name="file" type="file" id="formFile">
        </div>
        <button type="submit" class="btn btn-primary">Upload</button>
    </form>
</div>

<!-- Bootstrap JS (Popper included) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-..." crossorigin="anonymous"></script>

<!-- Simple client-side validation script for Bootstrap forms -->

</body>
</html>