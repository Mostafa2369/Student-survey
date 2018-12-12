<%-- 
    Document   : getfreeans
    Created on : Dec 16, 2017, 11:13:39 AM
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
            ResultSet rs = stmt.executeQuery("SELECT * FROM freeans");
            String name;
            int n = 0;
            while (rs.next()) {
                ++n;
                String g= rs.getString(3);
               if (n == no&&!g.equals("1")) {%><center> <%
                   out.print(rs.getString(2));%></center> 
        <form action="servy.jsp">            
            <center> <br> <input type="text" name="ans" value="" size="40" /><br>
            <input type="submit" value="Submit" /></center>
        </form>
      
        <%
                         
                }

else if(n==no&&g.equals("1"))
{  %><center><%out.print(rs.getString(2));
     %></center><%  }


            }

        %>
    </body>
</html>
