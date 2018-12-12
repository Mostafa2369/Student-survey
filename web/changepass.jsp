<%-- 
    Document   : changepass
    Created on : Dec 16, 2017, 1:20:36 PM
    Author     : Mostafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
       
         <script>
            function check()
            {
              <%  String name1 = (String)session.getAttribute( "pass2" );

        %>  
                 var pass = document.getElementsByName("pass")[0].value;
                var pass1 = document.getElementsByName("pwd1")[0].value;
                var pass2 = document.getElementsByName("pwd2")[0].value;
                  n = "<%=name1%>";
                  if(n!=pass)
                  {
                      alert("You enterd wrong password");
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
                <center> <h1> Change password</h1> </center>
        <center>  <form onsubmit= "return check();" action="passDB.jsp">
            Enter Current Password <input type="password" name="pass" value="" /><br>
            Enter new password <input type="password" name="pwd1" value="" /><br>
            Confirm Password <input type="password" name="pwd2" value="" /><br>
            <input type="submit" value="Submit" />  </center>
                     
        </form>
        
    </body>
</html>
