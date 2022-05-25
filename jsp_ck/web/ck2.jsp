<%-- 
    Document   : ck2
    Created on : 05-May-2022, 1:09:36 pm
    Author     : ayush
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
           Cookie ck[] = request.getCookies();
            out.print("Hello from cookie number "+ck[0].getValue()+"<br>");
            out.print("Hello from cookie "+ck[1].getValue());
           %>
    </body>
</html>
