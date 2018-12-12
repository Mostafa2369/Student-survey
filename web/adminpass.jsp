<%-- 
    Document   : adminpass
    Created on : Dec 16, 2017, 2:38:31 PM
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
    <body><script>
         function check1()
            {
             
              var name1 = document.getElementsByName("username")[0].value;
                var pass1 = document.getElementsByName("pwd1")[0].value;
                var pass2 = document.getElementsByName("pwd2")[0].value;
               <%  Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password);
                Statement stmt = Con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM info");
                String name;
               

            %>
            var n;
          
                var b = 1;
              <%  while(rs.next()) {%><%
            
                 name = rs.getString(1);
                
                
            %>
                    n = "<%=name%>";
                   

                    if (n == name1 )
                    {
                        b = 2;
                      
                    }
                <%}%>
                if (b != 2)
                {
                   alert("You enterd wrong username");
                    return false;
                }
              
                  
                if (pass1 != "" && pass1 == pass2) {
                    if (pass1.length < 8) {
                        alert("Error: Password must contain at least eight characters!");
                   
                        return false;
                    }

                    re = /[0-9]/;
                    if (!re.test(pass1)) {
                        alert("Error: password must contain at least one number (0-9)!");
                       
                        return false;
                    }
                    re = /[a-z]/;
                    if (!re.test(pass1)) {
                        alert("Error: password must contain at least one character (a-z)!");
                      
                        return false;
                    }


                } else {
                    alert("Error: Please check that you've entered and confirmed your password!");
           
                    return false;
                }

                alert("You entered a valid password: " + pass1);
                return true;
            }</script>
        
        
    <center> <h1>Change password of user</h1></center>
    <center><form onsubmit= "return check1();" action="adminpassDB.jsp">
            Enter username <input type="text" name="username" value="" /><br>
            <input type="password" name="pwd1" value="" /><br>
            <input type="password" name="pwd2" value="" /><br>
            <input type="submit" value="Submit" />
        </form></center>
    </body>
</html>
