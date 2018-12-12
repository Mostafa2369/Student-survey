<%-- 
    Document   : supend
    Created on : Dec 16, 2017, 8:49:53 PM
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
        <% String name = session.getAttribute("theName").toString();
        Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password1 = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password1);
                Statement stmt = Con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM mcq");
                String name1;
                int n=0;
                 while(rs.next())
                 {++n;
                     name1 = rs.getString(1);
                     if(name.equals(name1))
                     {
        %><center><% out.print(n+"."+rs.getString(2));%></center><% }                
                     
                 }
                %>
                <form action="mcqup.jsp">
                    Enter number of Survey to be suspend<input type="text" name="suspend" value="" />
                    <input type="submit" value="Suspend" /> <br>
                     Enter number of Survey to be close<input type="text" name="close" value="" />
                    <input type="submit" value="Close" /> <br>             
                </form>
                  <% 
        Class.forName("com.mysql.jdbc.Driver");
                String url1 = "jdbc:mysql://localhost:3306/student";
                String user1 = "root";
                String password = "";
                String Line1;
                Connection Con1 = DriverManager.getConnection(url, user, password1);
                Statement stmt1 = Con1.createStatement();
                ResultSet rs1 = stmt1.executeQuery("SELECT * FROM checkbox");
                String name5;
                int m=0;
                 while(rs1.next())
                 {++m;
                     name5 = rs1.getString(1);
                     if(name.equals(name5))
                     {
                  %><center><% out.print(m+"."+rs1.getString(2));%></center> <%                    
                     }
                 }
                %>
                <form action="checkboxup.jsp">
                    Enter number of Survey to be suspend<input type="text" name="suspend" value="" />
                    <input type="submit" value="Suspend" /> <br>
                     Enter number of Survey to be close<input type="text" name="close" value="" />
                    <input type="submit" value="Close" /> <br>             
                </form>
                      <% 
        Class.forName("com.mysql.jdbc.Driver");
                String url2 = "jdbc:mysql://localhost:3306/student";
                String user2 = "root";
                String password2 = "";
                String Line2;
                Connection Con2 = DriverManager.getConnection(url, user, password1);
                Statement stmt2 = Con2.createStatement();
                ResultSet rs2 = stmt2.executeQuery("SELECT * FROM freeans");
                String name4;
                int f=0;
                 while(rs2.next())
                 {++f;
                     name4 = rs2.getString(1);
                     if(name.equals(name4))
                     {
                     %><center><% out.print(f+"."+rs2.getString(2));%></center><%                    
                     }
                 }
                %>
                <form action="freeansup.jsp">
                    Enter number of Survey to be suspend<input type="text" name="suspend" value="" />
                    <input type="submit" value="Suspend" /> <br>
                     Enter number of Survey to be close<input type="text" name="close" value="" />
                    <input type="submit" value="Close" /> <br>             
                </form>
                
    </body>
</html>
