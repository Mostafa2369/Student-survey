<%-- 
    Document   : showcheckbox
    Created on : Dec 15, 2017, 6:20:07 PM
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
          <%  Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM checkbox");
                String name;
                int n=0;
                 while(rs.next())
                 {++n;
                     name = rs.getString(2);
                     String h=rs.getString(7);
                     
                     if(!h.equals("1")){
                     %>  <center>    <% out.println(n+"."+name);
                     }%></center> <br> <%
                 }

         %>
         <form action="getcheckbox.jsp">
           Enter Survey number  <input type="text" name="getno" value="" />
             <input type="submit" value="Submit" />
         </form>
    </body>
</html>
