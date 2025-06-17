<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shifa’s QuitQ E-Com</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
        }

        .home-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 30px;
        }

        h1 {
            font-size: 3.5rem;
            font-weight: 800;
            color: #2d2d2d;
            margin-bottom: 40px;
        }

        .btn-lg {
            padding: 15px 30px;
            font-size: 1.5rem;
            font-weight: 600;
            border-radius: 50px;
        }

        .btn-login {
            background-color: #e63946;
            color: white;
        }

        .btn-login:hover {
            background-color: #c92c3d;
        }

        .btn-register {
            background-color: #f4a261;
            color: white;
        }

        .btn-register:hover {
            background-color: #e68b46;
        }

        .btn-products {
            background-color: #2a9d8f;
            color: white;
        }

        .btn-products:hover {
            background-color: #21867a;
        }

        .button-group {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="home-container">
    <h1>👗 SHIFA’S QUITQ E-COM 👠</h1>
    <div class="button-group">
        <a href="/login" class="btn btn-login btn-lg">Login</a>
        <a href="/register" class="btn btn-register btn-lg">Register</a>
        <a href="/products" class="btn btn-products btn-lg">View Products</a>
    </div>
</div>
</body>
</html>
