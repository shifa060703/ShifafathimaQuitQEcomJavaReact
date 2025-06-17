<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shifa’s QuitQ E-Com - Products</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            font-family: 'Segoe UI', sans-serif;
        }

        .container {
            padding-top: 50px;
            padding-bottom: 50px;
        }

        h1 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 3rem;
            color: #2d2d2d;
            font-weight: bold;
        }

        .card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card img {
            border-radius: 20px 20px 0 0;
            height: 300px;
            object-fit: cover;
        }

        .card-body {
            text-align: center;
        }

        .price {
            font-weight: bold;
            color: #e63946;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>🛍️ Explore Products</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%-- Product 1 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image1.jpg" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Floral Kurti</h5>
                    <p class="price">₹999</p>
                </div>
            </div>
        </div>

        <%-- Product 2 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image2.jpg" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Black Jumpsuit</h5>
                    <p class="price">₹1,299</p>
                </div>
            </div>
        </div>

        <%-- Product 3 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image3.jpg" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Pink Maxi Dress</h5>
                    <p class="price">₹1,499</p>
                </div>
            </div>
        </div>

        <%-- Product 4 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image4.jpg" class="card-img-top" alt="Product 4">
                <div class="card-body">
                    <h5 class="card-title">Denim Jacket</h5>
                    <p class="price">₹799</p>
                </div>
            </div>
        </div>

        <%-- Product 5 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image5.jpg" class="card-img-top" alt="Product 5">
                <div class="card-body">
                    <h5 class="card-title">Ethnic Saree</h5>
                    <p class="price">₹1,899</p>
                </div>
            </div>
        </div>

        <%-- Product 6 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image6.jpg" class="card-img-top" alt="Product 6">
                <div class="card-body">
                    <h5 class="card-title">Mint Co-ord Set</h5>
                    <p class="price">₹1,599</p>
                </div>
            </div>
        </div>

        <%-- Product 7 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image7.jpg" alt="Product 7">
                <div class="card-body">
                    <h5 class="card-title">White Casual Tee</h5>
                    <p class="price">₹499</p>
                </div>
            </div>
        </div>

        <%-- Product 8 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image8.jpg" class="card-img-top" alt="Product 8">
                <div class="card-body">
                    <h5 class="card-title">Mint Green Gown</h5>
                    <p class="price">₹2,099</p>
                </div>
            </div>
        </div>

        <%-- Product 9 --%>
        <div class="col">
            <div class="card">
                <img src="/images/image9.jpg" class="card-img-top" alt="Product 9">
                <div class="card-body">
                    <h5 class="card-title">Boho Skirt</h5>
                    <p class="price">₹1,199</p>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
