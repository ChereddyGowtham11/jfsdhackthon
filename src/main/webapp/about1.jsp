<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>About Us</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
    }
    .header {
        background-color: #333;
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    .container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        background-color: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .about-section {
        margin-bottom: 20px;
    }
    .about-section h2 {
        color: #f39c12;
        margin-bottom: 10px;
    }
    .about-section p {
        line-height: 1.6;
    }
    .team {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .team-member {
        flex: 1 1 300px;
        margin: 10px;
        text-align: center;
    }
    .team-member img {
        border-radius: 50%;
        width: 150px;
        height: 150px;
    }
    .team-member h3 {
        margin: 10px 0 5px 0;
    }
    .team-member p {
        font-style: italic;
    }
</style>
</head>
<body>
<div class="header">
    <h1>About Us</h1>
</div>
<div class="container">
    <div class="about-section">
        <h2>Our Story</h2>
        <p>Welcome to StockX, your go-to platform for the latest stock market insights and trading tools. Our journey began in 2015 with the goal of making stock market investments accessible to everyone, from beginners to seasoned traders. With cutting-edge technology and real-time data, we aim to empower individuals to make informed financial decisions.</p>
    </div>
    <div class="about-section">
        <h2>Our Mission</h2>
        <p>Our mission is to provide users with accurate and real-time stock market data, analysis tools, and resources to help them navigate the stock market with confidence. We are dedicated to ensuring our users can maximize their investment opportunities through a seamless and intuitive platform.</p>
    </div>
    <div class="about-section">
        <h2>Meet the Team</h2>
        <div class="team">
            <div class="team-member">
                <h3>Gowtham</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <h3>Akhil</h3>
                <p>Chief Technology Officer</p>
            </div>
            <div class="team-member">
                <h3>Hari</h3>
                <p>Head of Market Analysis</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
