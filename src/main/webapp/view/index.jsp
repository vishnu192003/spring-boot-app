<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>MakeYourTour | Home</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>
    body {
        background: #f5f7fb;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar-brand {
        font-size: 26px;
        font-weight: 700;
    }

    .hero-section {
        margin-top: 80px;
    }

    .hero-card {
        padding: 50px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        background: #ffffff;
    }

    .hero-title {
        font-size: 36px;
        font-weight: 700;
        margin-bottom: 15px;
    }

    .hero-subtitle {
        font-size: 18px;
        color: #6c757d;
        margin-bottom: 30px;
    }

    .btn-lg {
        padding: 12px 30px;
        font-size: 18px;
    }
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="/">MakeYourTour</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse"
        data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/bookTicket">Book Ticket</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/getTicket">Get Ticket</a>
            </li>
        </ul>

        <form class="form-inline">
            <input class="form-control mr-2" type="search" placeholder="Search">
            <button class="btn btn-outline-light" type="submit">Search</button>
        </form>
    </div>
</nav>

<!-- Hero Section -->
<div class="container hero-section">
    <div class="row justify-content-center">
        <div class="col-md-8 text-center">
            <div class="hero-card">

                <h1 class="hero-title">Welcome to MakeYourTour</h1>
                <p class="hero-subtitle">
                    Fast, secure, and easy railway ticket booking at your fingertips.
                </p>

                <a href="/bookTicket" class="btn btn-success btn-lg mr-3">
                    🚆 Book Your Ticket
                </a>

                <a href="/getTicket" class="btn btn-outline-primary btn-lg">
                    🔍 Get Your Ticket
                </a>

            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
