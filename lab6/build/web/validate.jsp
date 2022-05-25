<%-- 
    Document   : validate
    Created on : 25 Feb, 2022, 12:57:54 PM
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

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if (email.equals("19SE02CE053@ppsu.ac.in") && password.equals("ayush")) {
                out.print("welcome " + email);

        %>

        <jsp:forward page="welcome.jsp"></jsp:forward>

        <%        } else {
            out.print("You Enter a Wrong Email or Password....!!!");
        %>

        <jsp:include page="index.html"></jsp:include>

        <%
            }
        %>
    </body>
</html>
