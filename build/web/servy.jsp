<%-- 
    Document   : servy
    Created on : Dec 5, 2017, 10:17:40 PM
    Author     : Mostafa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String name = request.getParameter("username");
String pass12 = request.getParameter("pass");
    session.setAttribute("theName", name);
 session.setAttribute("pass2", pass12);
%>
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


    <center><h1>Welcome </h1> </center>
    <form action="mcq.jsp">
        <p>To Create MCQ survey </p> <input type="submit" value="Click here" />
    </form> 
    <center>  <A HREF=" showmcq.jsp">To show MCQ survey</A> 
    </center>  
    <form action="checkbox.jsp">
        <p>To Create Checkbox survey </p> <input type="submit" value="Click here" />
    </form>
    <center>   <A HREF="showfreeans.jsp">To show Free Answer survey</A></center>
    <form action="freeans.jsp">
        <p>To Create Free answer survey </p> <input type="submit" value="Click here" />
    </form>
    <center>  <A HREF="showcheckbox.jsp">To show Check box survey</A></center>
    <form action="index.html">
        <br>
        <br>
        <input class="topright1"  type="submit" value="Logout" />
    </form>
    <form action="changepass.jsp">
        <input class="topright" type="submit" value="Change Password" />
    </form>
    <form action="supend.jsp">
        <input type="submit" value="To suspend or close Survey" />
    </form>
     
    
    
    
</body>
</html>
