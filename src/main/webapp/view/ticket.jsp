<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Ticket | MakeYourTour</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style>
    body {
        background: #f4f6f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar-brand {
        font-weight: bold;
        font-size: 24px;
    }

    .card {
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
    }

    .card-header {
        background: #007bff;
        color: white;
        font-size: 22px;
        font-weight: 600;
        text-align: center;
    }

    label {
        font-weight: 600;
    }
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
    </div>
</nav>

<!-- Booking Form -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <div class="card">
                <div class="card-header">
                    🚆 Ticket Booking Form
                </div>

                <div class="card-body">
                    <form action="/ticket" method="post">

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>First Name</label>
                                <input type="text" name="fname" class="form-control" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label>Last Name</label>
                                <input type="text" name="lname" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Mobile Number</label>
                                <input type="text" name="mno" class="form-control" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>From</label>
                                <input type="text" name="from" class="form-control" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label>To</label>
                                <input type="text" name="to" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Date of Journey</label>
                                <input type="date" name="doj" class="form-control" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label>Train Number</label>
                                <input type="text" name="trainNumber" class="form-control" required>
                            </div>
                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-success btn-lg">
                                Book My Ticket
                            </button>
                        </div>

                    </form>
                </div>

                <div class="card-footer text-center">
                    <a href="/getTicket" class="btn btn-outline-primary">
                        🔍 Get Your Ticket
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
