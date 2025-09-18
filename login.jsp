<%-- 
    Document   : login
    Created on : 3 Sep, 2025, 8:12:40 PM
    Author     : anany
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body {
                background-color: #0e1e42; /* Navy Blue */
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
            }

            .login-container {
                background-color: #e8f4f8; /* Very light blue */
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                width: 350px;
                text-align: center;
            }
            
            h2 {
                color: black;
                margin-bottom: 20px;
            }

            input[type="text"],
            input[type="password"],
            input[type="email"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button {
                background-color: #1a237e;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
                margin-top: 10px;
            }

            button:hover {
                background-color: #283593;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h2>Login</h2>
            <form action="LoginServlet" method="post">
                
                <input type="text" name="firstname" placeholder="First Name" required>
                <input type="text" name="lastname" placeholder="Last Name" required>
                
                <input type="text" name="contact" placeholder="Contact" required>
                <input type="email" name="email" placeholder="Email" required>
                
                <button type="submit">Login</button>
            </form>
        </div>
    </body>
</html>
