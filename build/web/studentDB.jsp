<%-- 
    Document   : studentDB
    Created on : Dec 5, 2017, 9:50:14 PM
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
       <%//add new username and pass
           String name = request.getParameter("name");
            String password = request.getParameter("pwd1");
            Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                String c="INSERT INTO `info`(`username`, `password`) VALUES ('"+name+"','"+password+"')";
                stmt.executeUpdate(c);

          
    %>
    <form action="student.jsp">
       <center>  <input type="submit" value="Continue" /> </center> 
    </form>
    </body>
</html>
