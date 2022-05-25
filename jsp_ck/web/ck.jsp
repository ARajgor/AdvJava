<%-- 
    Document   : ck
    Created on : 05-May-2022, 12:59:17 pm
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
            String name = request.getParameter("name");
            Cookie ck = new Cookie("name",name);
            response.addCookie(ck);
            
        %>
            <jsp:forward page="ck2.jsp"></jsp:forward>
        
    </body>
</html>