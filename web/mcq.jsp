<%-- 
    Document   : mcq
    Created on : Dec 14, 2017, 11:29:46 AM
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
    <center> <h1>MCQ Survey</h1></center>
         <form action="mcqDB.jsp">
        Enter the question <input type="text" name="ques" value="" />
        <br>
        Choice 1 <input type="text" name="c1" value="" />                <br>

        Choice 2 <input type="text" name="c2" value="" />                <br>

        Choice 3 <input type="text" name="c3" value="" /> <br>
        <input type="submit" value="Submit" />     
    </form>

    </body>
</html>
