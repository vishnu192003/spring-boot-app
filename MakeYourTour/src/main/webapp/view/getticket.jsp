<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<link rel="stylesheet" type="text/css" href="./css/index.css">

<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/"><h3>MakeYourTour</h3></a>
</nav>

<div class="container mt-5" align="center">
    <div class="jumbotron">

        <!-- Search Ticket Form -->
        <form action="searchticket" method="get">
            <table>
                <tr>
                    <td>Enter Ticket ID :</td>
                    <td>
                        <input type="text" name="ticketId" class="form-control" required>
                    </td>
                    <td>
                        <input type="submit" value="Confirm Ticket" class="btn btn-primary ml-2">
                    </td>
                </tr>
            </table>
        </form>

        <hr>

        <!-- Ticket Details -->
        <c:if test="${not empty ticket}">
            <table class="table table-bordered mt-3">
                <tr><th>Ticket ID</th><td>${ticket.ticketid}</td></tr>
                <tr><th>Train Number</th><td>${ticket.trainNumber}</td></tr>
                <tr><th>From</th><td>${ticket.from}</td></tr>
                <tr><th>To</th><td>${ticket.to}</td></tr>
                <tr><th>Date of Journey</th><td>${ticket.doj}</td></tr>
                <tr><th>Coach Number</th><td>${ticket.coachNumber}</td></tr>
                <tr><th>Seat Number</th><td>${ticket.seatNumber}</td></tr>
                <tr><th>Ticket Price</th><td>${ticket.ticketCost}</td></tr>
            </table>
        </c:if>

    </div>
</div>

</body>
</html>