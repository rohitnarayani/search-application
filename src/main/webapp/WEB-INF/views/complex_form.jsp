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
    <h1 class="mb-4">Sample Bootstrap Form</h1>
    <div class="alert alert-danger" role="alert">
        <form:errors path="formdata.*"  class="mb-3"/>
    </div>
    <form id="complexForm" method="post" action="formhandler" class="needs-validation" novalidate>
        <div class="row g-3">
            <div class="col-md-6">
                <label for="name" class="form-label">Full name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="John Doe" required>
                <div class="invalid-feedback">Please provide your name.</div>
            </div>

            <div class="col-md-6">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
                <div class="invalid-feedback">Please provide a valid email address.</div>
            </div>

            <div class="col-md-4">
                <label for="roles" class="form-label">Role</label>
                <select id="roles" name="roles" class="form-select" required multiple>
                    <option value="">Choose...</option>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                    <option value="guest">Guest</option>
                </select>
                <div class="invalid-feedback">Please select a role.</div>
            </div>

            <div class="col-md-4">
                <label for="age" class="form-label">Age</label>
                <input type="number" class="form-control" id="age" name="age" min="1" max="150">
            </div>

            <div class="col-md-4">
                <label for="dob" class="form-label">Date of birth</label>
                <input type="text" class="form-control" id="dob" name="dob" placeholder="dd/mm/yyyy">
            </div>

            <div class="col-12">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
                <div class="invalid-feedback">Please provide a password.</div>
            </div>
            <div class="card">
                <div class="card-body">
                   <strong> <p> Your Address</p> </strong>

                    <div class="form-group">
                        <input
                                name="address.street"
                                type="text"
                                class="form-control mb-2"
                                placeholder="Enter street" required>
                    </div>

                    <div class="form-group">
                        <input
                                name="address.city"
                                type="text"
                                class="form-control mb-2"
                                placeholder="Enter city" required>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="contact" id="contactEmail" value="email" checked>
                    <label class="form-check-label" for="contactEmail">Contact by Email</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="contact" id="contactPhone" value="phone">
                    <label class="form-check-label" for="contactPhone">Contact by Phone</label>
                </div>
            </div>

            <div class="col-12">
                <button class="btn btn-primary" type="submit">Submit form</button>
                <button class="btn btn-secondary ms-2" type="reset">Reset</button>
            </div>
        </div>
    </form>
</div>

<!-- Bootstrap JS (Popper included) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-..." crossorigin="anonymous"></script>

<!-- Simple client-side validation script for Bootstrap forms -->
<script>
    (function () {
        'use strict'

        // Fetch the form we want to apply custom validation to
        var form = document.getElementById('complexForm')

        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
            }
            form.classList.add('was-validated')
        }, false)
    })()
</script>
</body>
</html>