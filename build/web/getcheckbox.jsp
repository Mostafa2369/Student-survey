<%-- 
    Document   : getcheckbox
    Created on : Dec 16, 2017, 11:13:52 AM
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
      <center><h1>Put your Answer </h1></center>
        <% String noo = request.getParameter("getno");
            int no = Integer.parseInt(noo);
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/student";
            String user = "root";
            String password1 = "";
            String Line;
            Connection Con = DriverManager.getConnection(url, user, password1);
            Statement stmt = Con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM checkbox");
            String name;
            int n = 0;
            while (rs.next()) {
                ++n;
                String g= rs.getString(6);
               if (n == no&&!g.equals("1")) {%><center> <%
                   out.print(rs.getString(2));%></center> 
        <form action="servy.jsp">            
          <center>  <input  type = "checkbox" name = "r1" value = "" />
            <% out.print(rs.getString(3));%><br>
            <input  type = "checkbox" name = "r1" value = "" /> 
            <% out.print(rs.getString(4));%><br>
            <input  type = "checkbox" name = "r1" value = "" />
            <% out.print(rs.getString(5));%><br>
            <input type="submit" value="Submit" /></center>
        </form>
        <%
                         
                }
else if(n==no&&g.equals("1"))
{  %><center><%out.print(rs.getString(2));
      %><br><%  out.print(rs.getString(3));
       %><br><%  out.print(rs.getString(4));
       %><br><%  out.print(rs.getString(5));%></center><%  }
            }

        %>
    </body>
</html>
