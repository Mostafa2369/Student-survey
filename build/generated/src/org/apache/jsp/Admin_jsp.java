package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("            function d() {\n");
      out.write("            ");
 Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String password = "";
                String Line;
                Connection Con = DriverManager.getConnection(url, user, password);
                Statement stmt = Con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM admin");

                String name;
                String pass;

            
      out.write("\n");
      out.write("                \n");
      out.write("                var name1 = document.getElementsByName(\"username\")[0].value;\n");
      out.write("                var pass1 = document.getElementsByName(\"pass\")[0].value;\n");
      out.write("                var n;\n");
      out.write("                var p;\n");
      out.write("                var b = 1;\n");
      out.write("              ");
  while(rs.next()) {

            
                 name = rs.getString(1);
                pass = rs.getString(2);
                
            
      out.write("\n");
      out.write("                    n = \"");
      out.print(name);
      out.write("\";\n");
      out.write("                    p =  \"");
      out.print(pass);
      out.write("\";\n");
      out.write("\n");
      out.write("                    if (n == name1 && p==pass1)\n");
      out.write("                    {\n");
      out.write("                        b = 2;\n");
      out.write("                      \n");
      out.write("                    }\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                if (b == 2)\n");
      out.write("                {\n");
      out.write("                   alert(n);\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    alert(\"You enterd wrong username or password\");\n");
      out.write("                    return false;}\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form  onsubmit= \"return d();\" action=\"adminfun.jsp\">\n");
      out.write("\n");
      out.write("            Username    <input type=\"text\" name=\"username\"  id=\"name\" /><br>\n");
      out.write("            Password <input type=\"password\" name=\"pass\" id=\"pass\"  />\n");
      out.write("            <input type=\"submit\" value=\"Sign-in\" />\n");
      out.write("        </form>\n");
      out.write("     \n");
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
