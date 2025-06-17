<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SHIFA'S QUITQ E-COM REGISTER</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
        }

        .register-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #2d2d2d;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .form-control {
            padding: 15px;
            font-size: 1.1rem;
            margin-bottom: 20px;
            border-radius: 12px;
        }

        .btn-register {
            background-color: #f4a261;
            color: white;
            font-size: 1.2rem;
            padding: 12px;
            border-radius: 30px;
            width: 100%;
            font-weight: 600;
        }

        .btn-register:hover {
            background-color: #e68b46;
        }

        .error-msg {
            color: red;
            font-weight: 500;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="register-container">
    <div class="register-box">
        <h1>📝 Register for QuitQ</h1>
        <form action="/register" method="post">
            <input class="form-control" type="text" name="name" placeholder="Enter Full Name" required />
            <input class="form-control" type="email" name="email" placeholder="Enter Email" required />
            <input class="form-control" type="password" name="password" placeholder="Enter Password" required />
            <button class="btn btn-register" type="submit">Register</button>
            <div class="error-msg">${msg}</div>
        </form>
    </div>
</div>
</body>
</html>
