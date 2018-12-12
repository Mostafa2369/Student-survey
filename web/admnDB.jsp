<%-- 
    Document   : admnDB
    Created on : Dec 11, 2017, 11:25:22 PM
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
       <%String name = request.getParameter("username");
            String password = request.getParameter("pass");
            
 Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                String c="INSERT INTO `admin`(`username`, `password`) VALUES ('"+name+"','"+password+"')";
                stmt.executeUpdate(c);



       %>
    <center> <p> Admin added successful </p> </center>
           <form action="adminfun.jsp">
       <center>  <input type="submit" value="Continue" /> </center> 
    </form>
    </body>
</html>
