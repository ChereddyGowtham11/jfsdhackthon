<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Register Form</title>


<style>
    body {
        background-image: url('"C:\Users\chgow\Downloads\download.jpeg"'); /* Replace with your image path */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        color: white;
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent white for better contrast */
        padding: 25px;
        border-radius: 12px;
        max-width: 600px;
        margin: 60px auto;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.4);
        color: #333; /* Set text color for the form */
    }

    h3 {
        text-align: center;
        font-size: 30px;
        color: #333; /* Darker color for better visibility */
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #333; /* Ensure labels are visible */
    }

    .form-control {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 16px;
        color: #333; /* Ensure text inside input fields is visible */
    }

    .form-group input[type="radio"] {
        margin-right: 8px;
    }

    .button-container {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }

    .btn {
        padding: 10px 20px;
        border-radius: 6px;
        border: none;
        font-size: 16px;
        cursor: pointer;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
        transition: background-color 0.3s;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    .error {
        color: red;
        font-size: 14px;
    }

    .password-strength {
        color: orange;
        font-size: 14px;
    }
</style>

<script>
    function validateForm(event) {
        const email = document.getElementById("cemail").value;
        const password = document.getElementById("cpwd").value;
        const contact = document.getElementById("ccontact").value;

        const emailRegex = /^[a-zA-Z0-9._-]+@gmail\.com$/; // Only allows gmail.com email
        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/; // Password validation
        const contactRegex = /^\d{10}$/; // Contact number should be exactly 10 digits

        let isValid = true;

        // Validate email
        const emailError = document.getElementById("emailError");
        if (!emailRegex.test(email)) {
            emailError.textContent = "Please enter a valid Gmail address.";
            isValid = false;
        } else {
            emailError.textContent = "";
        }

        // Validate password
        const passwordError = document.getElementById("passwordError");
        if (!passwordRegex.test(password)) {
            passwordError.textContent =
                "Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character.";
            isValid = false;
        } else {
            passwordError.textContent = "";
        }

        // Password strength indicator
        const passwordStrength = document.getElementById("passwordStrength");
        if (password.length >= 8) {
            let strength = "Weak";
            if (/[A-Z]/.test(password) && /[a-z]/.test(password) && /\d/.test(password) && /[@$!%*?&]/.test(password)) {
                strength = "Strong";
            }
            passwordStrength.textContent = `Password strength: ${strength}`;
        }

        // Validate contact number
        const contactError = document.getElementById("contactError");
        if (!contactRegex.test(contact)) {
            contactError.textContent = "Please enter a valid 10-digit contact number.";
            isValid = false;
        } else {
            contactError.textContent = "";
        }

        if (!isValid) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    }
</script>

</head>
<body>
<h3>Customer Register Form</h3>
<div class="container">
    <form method="post" action="insertcustomer" onsubmit="validateForm(event)">
        <div class="form-group">
            <label for="cname">Enter Name</label>
            <input type="text" id="cname" class="form-control" name="cname" required/>
        </div>

        <div class="form-group">
            <label>Select Gender</label>
            <div>
                <input type="radio" id="male" name="cgender" value="MALE" required/>
                <label for="male">Male</label>
            </div>
            <div>
                <input type="radio" id="female" name="cgender" value="FEMALE" required/>
                <label for="female">Female</label>
            </div>
            <div>
                <input type="radio" id="others" name="cgender" value="OTHERS" required/>
                <label for="others">Others</label>
            </div>
        </div>

        <div class="form-group">
            <label for="cdob">Select Date of Birth</label>
            <input type="date" id="cdob" class="form-control" name="cdob" required/>
        </div>

        <div class="form-group">
            <label for="cemail">Enter Email ID</label>
            <input type="email" id="cemail" class="form-control" name="cemail" required/>
            <span id="emailError" class="error"></span>
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" class="form-control" name="cpwd" required/>
            <span id="passwordError" class="error"></span>
            <span id="passwordStrength" class="password-strength"></span>
        </div>

        <div class="form-group">
            <label for="clocation">Enter Location</label>
            <input type="text" id="clocation" class="form-control" name="clocation" required/>
        </div>

        <div class="form-group">
            <label for="ccontact">Enter Contact</label>
            <input type="text" id="ccontact" class="form-control" name="ccontact" required/>
            <span id="contactError" class="error"></span>
        </div>

        <div class="button-container">
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </div>
    </form>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
