<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />
    <script src="<c:url value="/resources/js/script.js"/>"></script>
</head>
<body>

    <img src="<c:url value="/resources/images/myimage.png"/>" alt="Banner" height="400px" width="400px">
    <div class="container">
        <div class="card mx-auto mt-5" style="width: 50%;">
            <div class="card-body bg-warning text-white">
                <h3 class="container text-center text-white" style="padding-top: 20px;text-transform: uppercase">My Search</h3>
                <form class="mt-3" action="${pageContext.request.contextPath}/search" method="post">
                    <div class="form-gorup">
                        <input type="text" name="querybox" class="form-control mt-3" placeholder="Enter your keyword" style="margin-left: 13px;width: 95%;">
                    </div>

                    <div class="container mt-4 text-center">
                        <button class="btn btn-outline-light " type="submit">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>