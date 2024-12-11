<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer - Stock App</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMBBy0w9XE9GH8cOYxKp1p6sIezf2kGm0q" crossorigin="anonymous">
<style>
    /* General page structure */
    html, body {
        height: 100%;
        margin: 0;
        display: flex;
        flex-direction: column;
    }

    .content {
        flex: 1; /* Ensures content pushes footer down */
    }

    /* Footer styling */
    .footer {
        background-color: #333;
        color: white;
        padding: 40px 20px;
        font-family: Arial, sans-serif;
    }

    .footer-container {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        max-width: 1200px;
        margin: 0 auto;
    }

    .footer-section {
        flex: 1;
        margin: 20px;
        min-width: 250px;
    }

    .footer-section h2 {
        color: #f39c12;
        margin-bottom: 20px;
        font-size: 20px;
    }

    .footer-section p {
        line-height: 1.6;
    }

    .footer-section ul {
        list-style: none;
        padding: 0;
    }

    .footer-section ul li {
        margin: 10px 0;
    }

    .footer-section ul li a {
        color: white;
        text-decoration: none;
    }

    .footer-section ul li a:hover {
        text-decoration: underline;
    }

    .social-icons a {
        display: inline-block;
        margin: 5px;
        text-decoration: none;
        color: white;
    }

    .social-icons a img {
        width: 30px;
        height: 30px;
        vertical-align: middle;
    }

    .footer-bottom {
        text-align: center;
        padding: 10px 0;
        border-top: 1px solid #444;
        margin-top: 20px;
        font-size: 14px;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        .footer-container {
            flex-direction: column;
            align-items: center;
        }

        .footer-section {
            margin: 10px 0;
        }
    }
</style>
</head>
<body>
<div class="content">
    <!-- Page Content Here -->
</div>
<div class="footer">
    <div class="footer-container">
        <!-- Company Information Section -->
        <div class="footer-section">
            <h2>StockMaster</h2>
            <p>Track your investments, analyze market trends, and stay ahead in the world of finance with StockMaster. Your trusted partner in the stock market.</p>
        </div>

        <!-- Quick Links Section -->
        <div class="footer-section">
            <h2>Quick Links</h2>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Market News</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </div>

        <!-- Social Media Section -->
        <div class="footer-section">
            <h2>Follow Us</h2>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
    </div>

    <!-- Footer Bottom Section -->
    <div class="footer-bottom">
        &copy; 2024 StockMaster. All Rights Reserved.
    </div>
</div>
</body>
</html>
