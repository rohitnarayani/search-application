<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error Occurred</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

</head>
<body class="bg-light">

<div class="container">

    <div class="row justify-content-center mt-5">
        <div class="col-md-8">

            <div class="card shadow-lg border-danger">

                <div class="card-header bg-danger text-white text-center">
                    <h3>⚠ Exception Occurred</h3>
                </div>

                <div class="card-body text-center">

                    <h5 class="text-danger mb-3">
                        Something went wrong while processing your request.
                    </h5>

                    <p class="text-muted">
                        An unexpected error has occurred in the application.
                    </p>

                    <hr>

                    <!-- Optional dynamic error message -->
                    <p class="text-dark">
                        <strong>Error Message:</strong>
                        ${msg}
                    </p>

                    <div class="mt-4">
                        <a href="${pageContext.request.contextPath}/home"
                           class="btn btn-primary">
                            Go to Home
                        </a>
                    </div>

                </div>

                <div class="card-footer text-center text-muted">
                    Please contact administrator if problem persists.
                </div>

            </div>

        </div>
    </div>

</div>

</body>
</html>
