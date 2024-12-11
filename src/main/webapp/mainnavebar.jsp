<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>JFSD</title>

<style>
    body {
        font-family: 'Roboto', sans-serif;
    }
    .navbar {
        background-color: green;
        display: flex;
        justify-content: center;
        padding: 20px;
    }
    .navbar a {
        color: white !important;
        margin: 0 30px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: darkgreen;
        padding: 5px;
    }
    .container {
        margin-top: 30px;
    }
    .stock-table {
        width: 100%;
        margin-top: 30px;
    }
    .stock-table th, .stock-table td {
        padding: 10px;
        text-align: center;
    }
    .stock-table th {
        background-color: #f4f4f4;
    }
    .stock-action-buttons {
        text-align: center;
    }
</style>

</head>
<body>

<div class="navbar">
    <a href="/">Home</a>
    <a href="customerreg">Customer Registration</a>
    <a href="customerlogin">Customer Login</a>
    <a href="about">About</a>
    <a href="adminlogin">Admin Login</a>
    <a href="stocks">Stocks</a>  <!-- Added Stocks link -->
</div>

<div class="container">
    <h2>Available Stocks</h2>
    <table class="table table-bordered stock-table">
        <thead>
            <tr>
                <th>Stock Name</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SBI</td>
                <td>$120</td>
                <td class="stock-action-buttons">
                    <button class="btn btn-primary">Buy</button>
                    <button class="btn btn-danger">Sell</button>
                </td>
            </tr>
            <tr>
                <td>HDFC</td>
                <td>$250</td>
                <td class="stock-action-buttons">
                    <button class="btn btn-primary">Buy</button>
                    <button class="btn btn-danger">Sell</button>
                </td>
            </tr>
            <tr>
                <td>ICICI</td>
                <td>$75</td>
                <td class="stock-action-buttons">
                    <button class="btn btn-primary">Buy</button>
                    <button class="btn btn-danger">Sell</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>
