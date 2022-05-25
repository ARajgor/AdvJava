<%-- 
    Document   : welcome
    Created on : 26 Feb, 2022, 11:03:58 AM
    Author     : Krish Moradiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = (String) request.getParameter("email");
            out.println("Welcome: " + email);
        %>
    </body>
</html>
