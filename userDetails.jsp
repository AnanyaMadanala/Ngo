<%-- 
    Document   : userDetails
    Created on : 1 Sep, 2025, 9:04:48 PM
    Author     : anany
    register.jsp page userdetails page
--%>
<!DOCTYPE html>

<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>User Details</title> 
        <style> 
            body { 
                background-color: #0e1e42; /* Navy Blue */ 
                font-family: Arial, sans-serif; 
                display: flex; 
                justify-content: center; 
                align-items: center; 
                min-height: 100vh; 
                margin: 0; 
                color: #333; 
            }

        .user-details-container {
            background-color: #e8f4f8; /* Very light blue */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: left;
        }

        h2 {
            text-align: center;
            color: #1a237e;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            line-height: 1.5;
            margin: 10px 0;
            padding-bottom: 5px;
            border-bottom: 1px dashed #ccc;
        }

        p strong {
            color: #0e1e42;
        }
    </style>
</head>
<body>
    <div class="user-details-container">
        <h2>Registration Successful!</h2>
        <p><strong>First Name:</strong> <%= request.getAttribute("firstname") %></p>
        <p><strong>Last Name:</strong> <%= request.getAttribute("lastname") %></p>
        <p><strong>Username:</strong> <%= request.getAttribute("username") %></p>
        <p><strong>Contact:</strong> <%= request.getAttribute("contact") %></p>
        <p><strong>Status:</strong> <%= request.getAttribute("status") %></p>
        <p><strong>NGO ID:</strong> <%= request.getAttribute("ngo_id") %></p>
        <p><strong>NGO Name:</strong> <%= request.getAttribute("ngo_name") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
        <select name="status" required>
        <option value="Verified">Verified</option>
        <option value="Declined">Declined</option>
        </select>
    </div>
</body>

</html>