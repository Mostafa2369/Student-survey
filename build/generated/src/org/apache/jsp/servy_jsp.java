package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class servy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 String name = request.getParameter("username");
String pass12 = request.getParameter("pass");
    session.setAttribute("theName", name);
 session.setAttribute("pass2", pass12);

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("\n");
      out.write("        .topright {\n");
      out.write("            position: absolute;\n");
      out.write("            top: 28px;\n");
      out.write("            right: 16px;\n");
      out.write("            font-size: 14px;\n");
      out.write("        }\n");
      out.write("        .topright1 {\n");
      out.write("            position: absolute;\n");
      out.write("            top: 60px;\n");
      out.write("            right: 80px;\n");
      out.write("            font-size: 14px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <center><h1>Welcome </h1> </center>\n");
      out.write("    <form action=\"mcq.jsp\">\n");
      out.write("        <p>To Create MCQ survey </p> <input type=\"submit\" value=\"Click here\" />\n");
      out.write("    </form> \n");
      out.write("    <center>  <A HREF=\" showmcq.jsp\">To show MCQ survey</A> \n");
      out.write("    </center>  \n");
      out.write("    <form action=\"checkbox.jsp\">\n");
      out.write("        <p>To Create Checkbox survey </p> <input type=\"submit\" value=\"Click here\" />\n");
      out.write("    </form>\n");
      out.write("    <center>   <A HREF=\"showfreeans.jsp\">To show Free Answer survey</A></center>\n");
      out.write("    <form action=\"freeans.jsp\">\n");
      out.write("        <p>To Create Free answer survey </p> <input type=\"submit\" value=\"Click here\" />\n");
      out.write("    </form>\n");
      out.write("    <center>  <A HREF=\"showcheckbox.jsp\">To show Check box survey</A></center>\n");
      out.write("    <form action=\"index.html\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input class=\"topright1\"  type=\"submit\" value=\"Logout\" />\n");
      out.write("    </form>\n");
      out.write("    <form action=\"changepass.jsp\">\n");
      out.write("        <input class=\"topright\" type=\"submit\" value=\"Change Password\" />\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("</body>\n");
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
