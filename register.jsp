<%-- 
    Document   : register
    Created on : 29 Aug, 2025, 8:24:47 AM
    Author     : anany
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #0B1D42; /* Dark Blue Background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .register-container {
            background: #E6F3F8; /* Light Blue Container */
            padding: 2em;
            border-radius: 12px;
            box-shadow: 0px 6px 12px rgba(0,0,0,0.3);
            width: 400px;
        }
        .register-container h2 {
            text-align: center;
            margin-bottom: 1em;
            color: #0B1D42; /* Heading in Dark Blue */
            font-size: 1.8em;
        }
        .register-container input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1em;
        }
        .register-container button {
            width: 100%;
            padding: 12px;
            background: #0D1C6A; /* Deep Blue Button */
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.1em;
            font-weight: bold;
        }
        .register-container button:hover {
            background: #092055; /* Slightly darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>User Registration</h2>
        <form action="RegisterServlet" method="post">
            <input type="text" name="username" placeholder="User Name" required>
            <input type="text" name="firstname" placeholder="First Name" required>
            <input type="text" name="lastname" placeholder="Last Name" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="text" name="contact" placeholder="Contact" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="ngo_id" placeholder="NGO ID" required>
            <input type="text" name="ngo_name" placeholder="NGO Name" required>
           <select name="status" required>
            <option value="Verified">Verified</option>
            <option value="Declined">Declined</option>
            </select> 
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>