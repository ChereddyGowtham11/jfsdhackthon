<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Form</title>

<!-- Add updated CSS for improved styling -->
<style>
    body {
        background-image: url('data:image/jpeg;base64,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'); 
        background-size: cover;
        background-position: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9); /* Lighter semi-transparent background */
        padding: 30px;
        border-radius: 15px;
        max-width: 400px;
        margin: 100px auto;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: bold;
        color: #333; /* Darker label color for better readability */
    }

    .form-control {
        width: 100%;
        padding: 12px;
        margin-top: 8px;
        border-radius: 5px;
        border: 1px solid #ddd;
        font-size: 14px;
        box-sizing: border-box;
    }

    .form-control:focus {
        border-color: #28a745;
        outline: none;
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
    }

    .button-container {
        display: flex;
        justify-content: space-between;
    }

    .btn {
        padding: 12px 25px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    h3 {
        font-size: 30px;
        font-weight: bold;
        text-align: center;
        margin: 20px 0;
        color: white;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            margin: 50px 20px;
        }
    }
</style>

<!-- Add JavaScript for custom validations -->
<script>
    function validateForm() {
        const email = document.getElementById("auname").value;
        const password = document.getElementById("apwd").value;

        const emailPattern = /^[^@\s]+@[^@\s]+\.[^@\s]+$/; // Basic email regex
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 8) {
            alert("Password must be at least 8 characters long.");
            return false;
        }

        return true;
    }
</script>

</head>
<body>

<h3>Admin Login Form</h3>
<div class="container">
    <form method="post" action="checkadminlogin" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="auname">Enter Email</label>
            <input type="email" id="auname" class="form-control" name="auname" placeholder="admin@example.com" required/>
        </div>

        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" class="form-control" name="apwd" placeholder="Password (min 6 characters)" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </div>
    </form>
</div>

</body>
<%@include file="footer.jsp" %>
</html>
