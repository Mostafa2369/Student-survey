<%-- 
    Document   : Admin
    Created on : Dec 3, 2017, 10:42:14 PM
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
    <body> <center><h1>Login</h1></center>
        <br>

        <script>

            function d() {
            <% Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password);
                Statement stmt = Con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM admin");

                String name;
                String pass;

            %>
                
                var name1 = document.getElementsByName("username")[0].value;
                var pass1 = document.getElementsByName("pass")[0].value;
                var n;
                var p;
                var b = 1;
              <%  while(rs.next()) {%><%
            
                 name = rs.getString(1);
                pass = rs.getString(2);
                
            %>
                    n = "<%=name%>";
                    p =  "<%=pass%>";

                    if (n == name1 && p==pass1)
                    {
                        b = 2;
                      
                    }
                <%}%>
                if (b == 2)
                {
                  
                    return true;
                }
                else{
                    alert("You enterd wrong username or password");
                    return false;}
            }
        </script>


        <form  onsubmit= "return d();" action="adminfun.jsp">

            Username    <input type="text" name="username"  id="name" /><br>
            Password <input type="password" name="pass" id="pass"  />
            <input type="submit" value="Login" />
        </form>
     
    </body>
</html>
