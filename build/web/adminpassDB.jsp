<%-- 
    Document   : adminpassDB
    Created on : Dec 16, 2017, 2:43:54 PM
    Author     : Mostafa
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String name = request.getParameter("username");
            String pass = request.getParameter("pwd1");
        
        Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                String c="UPDATE info SET `password` = '"+pass+"'WHERE `username` = '"+name+"'";
                stmt.executeUpdate(c);
        
        
        %>
    <center>  <h1> Password changed successfully</h1></center>
       <center>   <form action="adminfun.jsp">
            <input type="submit" value="Home page" />
        </form> </center> 
    </body>
</html>
