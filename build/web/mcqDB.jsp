<%-- 
    Document   : mcqDB
    Created on : Dec 14, 2017, 2:00:11 PM
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
    <body> <%
        String ques = request.getParameter("ques") ;
        String c1 = request.getParameter("c1") ;
        String c2 = request.getParameter("c2") ;
        String c3 = request.getParameter("c3") ;
        String name = (String)session.getAttribute( "theName" );
        
        Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                String c="INSERT INTO `mcq`(`username`, `ques`,`c1`,`c2`,`c3`)"
                        + " VALUES ('"+name+"','"+ques+"','"+c1+"','"+c2+"','"+c3+"')";
                stmt.executeUpdate(c);
    %>
    <center> <h1>Your Survey successfully Added</h1></center>
    <form action="servy.jsp">
        <br>
       <center>  <input type="submit" value="Home Page" /> </center>
    </form>
    </body>
</html>
