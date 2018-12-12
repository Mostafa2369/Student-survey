<%-- 
    Document   : index
    Created on : Dec 9, 2011, 3:02:13 PM
    Author     : ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <body>
    <center>  <h1>Sign-up</h1></center>
        <script >
            function checkForm(form)
            {
                if (form.name.value == "") {
                    alert("Error: Username cannot be blank!");
                    form.name.focus();
                    return false;
                }

                if (form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
                    if (form.pwd1.value.length < 8) {
                        alert("Error: Password must contain at least eight characters!");
                        form.pwd1.focus();
                        return false;
                    }
                    if (form.pwd1.value == form.name.value) {
                        alert("Error: Password must be different from Username!");
                        form.pwd1.focus();
                        return false;
                    }
                    re = /[0-9]/;
                    if (!re.test(form.pwd1.value)) {
                        alert("Error: password must contain at least one number (0-9)!");
                        form.pwd1.focus();
                        return false;
                    }
                    re = /[a-z]/;
                    if (!re.test(form.pwd1.value)) {
                        alert("Error: password must contain at least one character (a-z)!");
                        form.pwd1.focus();
                        return false;
                    }


                } else {
                    alert("Error: Please check that you've entered and confirmed your password!");
                    form.pwd1.focus();
                    return false;
                }

                alert("You entered a valid password: " + form.pwd1.value);
                return true;
            }
            function sendajax() {

                var name = document.getElementById("name").value;
                var xmlhttp = new XMLHttpRequest();

                xmlhttp.open("GET", "process_ajax?name=" + name, true);
                xmlhttp.send();

                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("show_response").innerHTML = xmlhttp.responseText;
                    }
                }
            }
        </script>
        <form onsubmit= "return checkForm(this);" action = "studentDB.jsp">
           
                    UserName
                    <input type="text" name="name" id="name"  />


                    <input type="button" value="check" onclick="sendajax()"/>
                    <div id="show_response"></div>
                

            <p>Password: <input type="password" name="pwd1"></p>
                 <p>Confirm Password: <input type="password" name="pwd2"></p>
               
        
          <p><input type="submit"></p>
        </form>
    </body>
</html>
