<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Details</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f6f9;
        }
        .card {
            width: 450px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        .row {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            border-bottom: 1px solid #eee;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
    </style>
</head>

<body>
<div class="card">
    <h2>🎫 Ticket Details</h2>

    <div class="row"><span class="label">Ticket ID</span><span>${ticket.ticketid}</span></div>
    <div class="row"><span class="label">Train No</span><span>${ticket.trainNumber}</span></div>
    <div class="row"><span class="label">From</span><span>${ticket.from}</span></div>
    <div class="row"><span class="label">To</span><span>${ticket.to}</span></div>
    <div class="row"><span class="label">Journey Date</span><span>${ticket.doj}</span></div>
    <div class="row"><span class="label">Coach</span><span>${ticket.coachNumber}</span></div>
    <div class="row"><span class="label">Seat</span><span>${ticket.seatNumber}</span></div>
    <div class="row"><span class="label">Fare</span><span>₹ ${ticket.ticketCost}</span></div>
</div>
</body>
</html>
