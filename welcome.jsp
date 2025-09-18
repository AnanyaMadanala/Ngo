<%-- 
    Document   : welcome
    Created on : 3 Sep, 2025, 11:03:52 PM
    Author     : anany
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <%
        String username = (String)session.getAttribute("username");
    %>
    <body>
        <h1>Welcome <%=username%></h1>
    </body>
</html>
