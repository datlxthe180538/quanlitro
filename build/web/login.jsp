<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="img/Blue Minimalist Clean House Service Logo (7).png"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TienDat Apartment</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-SZXxX4whJ79/gErwcOYfzME9jIK6bqfLOeFw1HA6j9x4AIXLlChybexlW1Bpbx5y" crossorigin="anonymous">
</head>
<body>
    <div class="nav-logo">
            <img src="img/Blue Minimalist Clean House Service Logo (4).png" alt style="    width: 250px;
    height: 255px;border-radius: 20%;margin-left: -20px;margin-top: -20px;"/>

        </div>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card card-blur">
                    <div class="card-header bg-primary text-white">
                        <h3 class="text-center">Login</h3>
                    </div>
                    <div class="card-body">
                        <c:if test="${not empty error}">
                            <c:choose>
                                <c:when test="${error == 'password'}">
                                    <div class="alert alert-danger" role="alert">
                                        Incorrect username or password. Please try again!
                                    </div>
                                </c:when>
                                <c:when test="${error == 'username'}">
                                    <div class="alert alert-danger" role="alert">
                                        Username not found. Please try again!
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="alert alert-danger" role="alert">
                                        Login failed. Please try again!
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </c:if>

                        <form action="login" method="post">
                            <div class="form-group input-box">
                                <i class="fa fa-user"></i>
                                <label for="username" style="color: #392467">Username</label>
                                <input type="text" id="username" name="username" class="form-control input-field" required>
                            </div>
                            <div class="form-group input-box">
                                <i class="fa fa-lock"></i>
                                <label for="password" style="color: #392467">Password</label>
                                <input type="password" id="password" name="password" class="form-control input-field" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block submit">Login</button>
                            <a href="register" class="register-link">Register now</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies (if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-KyZXEAg3QhqLMpG8r+PoA5RO0rTNhQUuTdHW5OoaOD3L+E9yz7+7bDf4Mkhjt7ab"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+VyC2f3KuF02TCmYZ+X6Z/x6BZpWYRmdiCE"
        crossorigin="anonymous"></script>
</body>
</html>
