<%-- 
    Document   : checkboxup
    Created on : Dec 16, 2017, 10:34:32 PM
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
        <%   String name = request.getParameter("suspend");
            String name2 = request.getParameter("close");
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/student";
            String user = "root";
            String password1 = "";
            String Line;
            Connection Con = DriverManager.getConnection(url, user, password1);
            Statement stmt = Con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM checkbox");
           
            if (name!="") {
                 int e = 0;
            int r = Integer.parseInt(name);
            String name4 = "";
            while (rs.next()) {
                ++e;

                if(r==e){
                    name4 = rs.getString(2);
                    out.print(name4);
                    break;
                }
        }
                String c = "UPDATE checkbox SET `suspend` = 1,`close` = 0 WHERE `ques` = '"+name4+"'";
                stmt.executeUpdate(c);
                out.print(name4);
            }
            
            
            if (name2!="") {
                 int e = 0;
            int r = Integer.parseInt(name2);
            String name5 = "";
            while (rs.next()) {
                ++e;

                if(r==e){
                    name5 = rs.getString(2);
                    out.print(name5);
                    break;
                }
        }
                String c = "UPDATE checkbox SET `close` = 1,`suspend` = 0 WHERE `ques` = '"+name5+"'";
                stmt.executeUpdate(c);
                out.print(name5);
            }

        %>
        <form action="servy.jsp">
            <center>    <input type="submit" value="Home Page" /></center>
        </form>
    </body>
</html>
