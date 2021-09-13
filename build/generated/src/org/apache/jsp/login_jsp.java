package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Hostel-Management</title>\n");
      out.write("\t<style>\n");
      out.write("\t\t.something {\n");
      out.write("\t\t\tborder: 2px ;\n");
      out.write("\t\t\tbackground-color: #F0F8FF ;\n");
      out.write("\t\t\tmargin: 10px 35% 30% 35% ;\n");
      out.write("\t\t\tpadding: 50px 40px 60px 80px ;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput {\n");
      out.write("\t\t\tmargin-top: 5px ; \n");
      out.write("\t\t\tmargin-bottom: 5px ; \n");
      out.write("\t\t\tpadding-top: 10px ;\n");
      out.write("\t\t\tpadding-bottom: 8px;\n");
      out.write("\t\t}\n");
      out.write("\t\th1{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<h1>Login</h1>\n");
      out.write("\t<div class=\"something\">\n");
      out.write("\t<form method=\"post\">\n");
      out.write("\t\t\t<label for=\"mail\">Email</label><br>\n");
      out.write("\t\t\t<input type=\"email\" name=\"mail\" id=\"mail\" placeholder=\"Email\" required><br>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<label for=\"passwd\">Password</label><br>\n");
      out.write("\t\t\t<input type=\"password\" name=\"passwd\" id=\"passwd\" placeholder=\"Password\" required><br>\n");
      out.write("\n");
      out.write("\t\t\t<input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Login\" style=\"background-color: #50C878;color: white; padding: 2px 5px 2px 5px\">\t\t\n");
      out.write("\t</form>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");

    if(request.getParameter("submit")!=null)
    {
    String email=request.getParameter("mail");
    String passwd=request.getParameter("passwd");
    DbQuery db=new DbQuery();
    ResultSet rs=db.login(email,passwd);
    if(rs.next())
    {
        String usertype=rs.getString("user_type");
        if(usertype.equalsIgnoreCase("admin"))
        {
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            response.sendRedirect("staffhome.jsp");
        }
    }
    else
    {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"invalid username or password\");\n");
      out.write("        </script>\n");
      out.write("        ");

    }
    }

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
