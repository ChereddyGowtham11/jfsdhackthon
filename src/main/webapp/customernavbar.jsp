<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>JFSD</title>

<style>
  /* Navigation Bar Styling */
  .navbar-custom {
    "src/main/webapp/home.jsp"  background-color: #28a745; /* Green background */
      border-radius: 0; /* Remove rounded corners */
      margin-bottom: 0; /* Remove margin at the bottom */
  }

  .navbar-custom .nav > li > a {
      color: white; /* White text color */
      text-align: center; /* Center the text */
      padding: 15px 20px; /* Adjust padding for better spacing */
      font-size: 16px; /* Adjust font size */
  }

  .navbar-custom .nav > li > a:hover {
      background-color: #218838; /* Darker green when hovering */
  }

  /* Optional: Make navbar links larger on small screens */
  @media (max-width: 768px) {
      .navbar-custom .nav > li > a {
          font-size: 18px;
      }
  }

  /* Body background color */
  body {
    background-color: lightblue;
  }

  /* Center header text */
  h2 {
    text-align: center;
  }
</style>

</head>

<body>


<!-- Navigation Bar -->
<div class="navbar navbar-custom">
  <div class="container">
    <ul class="nav navbar-nav">
      <li><a href="customerhome">Home</a></li>
      <li><a href="customerprofile">Customer profile</a></li>
      <li><a href="customerlogout">Logout</a></li>
    </ul>
  </div>
</div>

</body>
</html>
