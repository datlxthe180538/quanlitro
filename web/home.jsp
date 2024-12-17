<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link rel="icon" href="img/Blue Minimalist Clean House Service Logo (7).png"/>
        <title>TienDat Apartment</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="style.css2">
        <style>
            .pagination {
                justify-content: center;
                margin-top: 20px;
            }
            .card {
                margin-bottom: 20px;
            }
            .contact-buttons {
            position: fixed;
            bottom: 80px;
            right: 20px;
            display: flex;
            justify-content: center;
            flex-direction: column;
            gap: 10px;
            z-index: 1000; /* Ensure buttons are on top */
        }
        .contact-buttons a {
            text-decoration: none;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .contact-buttons .zalo { background-color: #0084ff; }
        .contact-buttons .facebook { background-color: #4267B2; }
        .contact-buttons .hotline { background-color: #d9534f; }

        /* Hover effects */
        .contact-buttons a:hover {
            opacity: 0.8;
        }

        .contact-buttons i {
            margin-right: 10px;
        }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <!-- Banner Section -->
        <section class="banner">
            <div class="container" style="color: white; background-color: rgba(0, 0, 0, .5); padding: 80px 0">
                <h1>Welcome to TienDat Apartment</h1>
                <p class="lead">Explore our rooms and services.</p>
            </div>
        </section>
        <div class="container">
            <h1 class="my-4">ROOM LIST</h1>

            <!-- Filter Form -->
            <form action="home" method="get">
                <div class="form-row">
                    <div class="col-md-3 mb-3">
                        <label for="minPrice">Min Price</label>
                        <input type="number" class="form-control" id="minPrice" name="minPrice" placeholder="Min Price" value="${param.minPrice}">
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="maxPrice">Max Price</label>
                        <input type="number" class="form-control" id="maxPrice" name="maxPrice" placeholder="Max Price" value="${param.maxPrice}">
                    </div>
                    <div class="col-md-2 mb-3">
                        <label>&nbsp;</label><br>
                        <button type="submit" class="btn btn-primary btn-block">Apply Filter</button>
                    </div>
                    <div class="col-md-2 mb-3">
                        <label>&nbsp;</label><br>
                        <button type="reset" class="btn btn-primary btn-block">Reset</button>
                    </div>
                </div>
            </form>

            <!-- Room List -->
            <div class="row">
                <c:forEach var="room" items="${rooms}">
                    <div class="col-lg-4 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <img class="card-img-top" src="${room.listImageURL[0]}" alt="..." />
                                <h5 class="card-title">${room.roomNumber}</h5>
                                <p class="card-text">${room.description}</p>
                                <p class="card-text"><strong>Price:</strong> $${room.price}</p>
                            </div>
                            <div class="d-flex justify-content-center p-3">
                                <a class="btn btn-primary" href="room-detail?roomID=${room.roomID}">View Detail</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <li class="page-item ${pageNumber == 1 ? 'disabled' : ''}">
                    <a class="page-link" href="home?page=${pageNumber - 1}&minPrice=${param.minPrice}&maxPrice=${param.maxPrice}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>

                <c:forEach var="page" begin="1" end="${totalPages}">
                    <li class="page-item ${page == pageNumber ? 'active' : ''}">
                        <a class="page-link" href="home?page=${page}&minPrice=${param.minPrice}&maxPrice=${param.maxPrice}">${page}</a>
                    </li>
                </c:forEach>

                <li class="page-item ${pageNumber == totalPages ? 'disabled' : ''}">
                    <a class="page-link" href="home?page=${pageNumber + 1}&minPrice=${param.minPrice}&maxPrice=${param.maxPrice}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
     <div class="contact-buttons">
    <a href="https://zalo.me/0388964889" class="zalo" target="_blank">
        <i></i>Zalo
    </a>
    <a href="https://www.facebook.com/profile.php?id=61562444391001" class="facebook" target="_blank">
        <i class="fab fa-facebook-f"></i>
    </a>
    <a href="tel:+0388964889" class="hotline">
        <i class="fas fa-phone-alt"></i> 
    </a>
</div>
        </div>
        <jsp:include page="footer.html"/>
        <!-- Include Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-5zvFH0C2F/pDnlzn/+OPOZsOL28NY2be6t/jrA6WWpSj8bc46l07Fg0S5oJPr5fZ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+YT3EIQCE4NCptea7G4lB9Bq4Q+qwuSAIf2" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
    </body>
</html>
