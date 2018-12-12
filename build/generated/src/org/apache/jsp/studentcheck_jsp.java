package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class studentcheck_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <script >\n");
      out.write("            function checkForm(form)\n");
      out.write("            {\n");
      out.write("                if (form.name.value == \"\") {\n");
      out.write("                    alert(\"Error: Username cannot be blank!\");\n");
      out.write("                    form.name.focus();\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                if (form.pwd1.value != \"\" && form.pwd1.value == form.pwd2.value) {\n");
      out.write("                    if (form.pwd1.value.length < 8) {\n");
      out.write("                        alert(\"Error: Password must contain at least eight characters!\");\n");
      out.write("                        form.pwd1.focus();\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    if (form.pwd1.value == form.name.value) {\n");
      out.write("                        alert(\"Error: Password must be different from Username!\");\n");
      out.write("                        form.pwd1.focus();\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    re = /[0-9]/;\n");
      out.write("                    if (!re.test(form.pwd1.value)) {\n");
      out.write("                        alert(\"Error: password must contain at least one number (0-9)!\");\n");
      out.write("                        form.pwd1.focus();\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    re = /[a-z]/;\n");
      out.write("                    if (!re.test(form.pwd1.value)) {\n");
      out.write("                        alert(\"Error: password must contain at least one character (a-z)!\");\n");
      out.write("                        form.pwd1.focus();\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("                } else {\n");
      out.write("                    alert(\"Error: Please check that you've entered and confirmed your password!\");\n");
      out.write("                    form.pwd1.focus();\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                alert(\"You entered a valid password: \" + form.pwd1.value);\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("            function sendajax() {\n");
      out.write("\n");
      out.write("                var name = document.getElementById(\"name\").value;\n");
      out.write("                var xmlhttp = new XMLHttpRequest();\n");
      out.write("\n");
      out.write("                xmlhttp.open(\"GET\", \"process_ajax?name=\" + name, true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("\n");
      out.write("                xmlhttp.onreadystatechange = function ()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"show_response\").innerHTML = xmlhttp.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <form onsubmit= \"return checkForm(this);\" action = \"studentDB.jsp\">\n");
      out.write("           \n");
      out.write("                    UserName\n");
      out.write("                    <input type=\"text\" name=\"name\" id=\"name\"  />\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <input type=\"button\" value=\"check\" onclick=\"sendajax()\"/>\n");
      out.write("                    <div id=\"show_response\"></div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("            <p>Password: <input type=\"password\" name=\"pwd1\"></p>\n");
      out.write("                 <p>Confirm Password: <input type=\"password\" name=\"pwd2\"></p>\n");
      out.write("               \n");
      out.write("        \n");
      out.write("          <p><input type=\"submit\"></p>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
