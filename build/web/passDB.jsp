<%-- 
    Document   : passDB
    Created on : Dec 16, 2017, 1:43:28 PM
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
        <% String pass = (String)request.getParameter("pwd1");
        String name2 = (String)session.getAttribute("theName");
        Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                String c="UPDATE info SET `password` = '"+pass+"'WHERE `username` = '"+name2+"'";
                stmt.executeUpdate(c);
       
%>       <center><h1>Please Login again</h1></center>
        <form action="student.jsp">
            
         <center>   <input type="submit" value="Login " /> </center>
        </form>
    </body>
</html>
