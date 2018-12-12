<%-- 
    Document   : adminfun
    Created on : Dec 5, 2017, 10:22:50 PM
    Author     : Mostafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>

        .topright {
            position: absolute;
            top: 28px;
            right: 16px;
            font-size: 14px;
        }
        .topright1 {
            position: absolute;
            top: 60px;
            right: 80px;
            font-size: 14px;
        }


    </style>
    <body>
  
        <form action="addadmin.jsp">
            <br><br><br>
            <center>  <input  type="submit" value="To Add admin" /></center>
        </form>
        <form action="adminpass.jsp">
        <input class="topright" type="submit" value="Change Password" />
    </form>
           <form action="index.html">
            <input class="topright1" type="submit" value="Logout" />
        </form>
    </body>
</html>
