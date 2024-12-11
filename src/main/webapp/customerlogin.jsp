<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock Market App - Customer Login</title>

<!-- Link to external CSS -->
<link rel="stylesheet" type="text/css" href="styles.css">

<!-- JavaScript for additional validation -->
<script>
    function validateForm() {
        const email = document.getElementById("cemail").value;
        const password = document.getElementById("cpwd").value;

        // Email validation regex
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address (e.g., user@example.com).");
            return false;
        }

        // Password validation (min 8 characters, at least one letter and one number)
        const passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        if (!passwordPattern.test(password)) {
            alert("Password must be at least 8 characters long and include letters and numbers.");
            return false;
        }

        return true; // Proceed with form submission
    }
</script>

</head>
<body>
<%@include file="mainnavebar.jsp" %>
<h3>Welcome to the Stock Market App</h3>
<h4><c:out value="${message}"></c:out><br/></h4>
<div class="container">
    <form method="post" action="checkcustomerlogin" onsubmit="return validateForm()">
        <!-- Email Field -->
        <div class="form-group">
            <label for="cemail">Email Address</label>
            <input type="text" id="cemail" class="form-control" name="cemail" 
                   placeholder="Enter your email" required
                   pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                   title="Enter a valid email address (e.g., user@example.com)"/>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="cpwd">Password</label>
            <input type="password" id="cpwd" class="form-control" name="cpwd" 
                   placeholder="Enter your password" required 
                   minlength="8"
                   pattern="(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}"
                   title="Password must be at least 8 characters long and include letters and numbers."/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-primary"/>
            <input type="reset" value="Clear" class="btn btn-secondary"/>
        </div>
    </form>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
