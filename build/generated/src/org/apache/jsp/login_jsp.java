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

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Footer.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <!-- Basic -->\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("  <!-- Mobile Metas -->\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("  <!-- Site Metas -->\n");
      out.write("  <meta name=\"keywords\" content=\"\" />\n");
      out.write("  <meta name=\"description\" content=\"\" />\n");
      out.write("  <meta name=\"author\" content=\"\" />\n");
      out.write("\n");
      out.write("  <title>Hostel Management</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- bootstrap core css -->\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\" />\n");
      out.write("  <!-- fonts style -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap\" rel=\"stylesheet\" />\n");
      out.write("  <!-- Custom styles for this template -->\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- responsive style -->\n");
      out.write("  <link href=\"css/responsive.css\" rel=\"stylesheet\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"sub_page\">\n");
      out.write("  <div class=\"hero_area\">\n");
      out.write("    <!-- header section strats -->\n");
      out.write("    <header class=\"header_section\">\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg custom_nav-container \">\n");
      out.write("          <a class=\"navbar-brand\" href=\"index.html\">\n");
      out.write("            <h3>\n");
      out.write("              Joson\n");
      out.write("            </h3>\n");
      out.write("            <span> college</span>\n");
      out.write("          </a>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse ml-auto\" id=\"navbarSupportedContent\">\n");
      out.write("\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </nav>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- end header section -->\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- login section -->\n");
      out.write("\n");
      out.write("  <section class=\"login_section layout_padding\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("          <div class=\"detail-box\">\n");
      out.write("            <h3>\n");
      out.write("              Hostel Management\n");
      out.write("            </h3>\n");
      out.write("            <p>\n");
      out.write("              Create your free account now and get immediate access to 100s of\n");
      out.write("              online courses\n");
      out.write("          </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("          <div class=\"login_form\">\n");
      out.write("            <h5>\n");
      out.write("              Login Now\n");
      out.write("            </h5>\n");
      out.write("            <form action=\"\">\n");
      out.write("              <div>\n");
      out.write("                  <input type=\"email\" placeholder=\"Email \" name=\"mail\" />\n");
      out.write("              </div>\n");
      out.write("              <div>\n");
      out.write("                  <input type=\"password\" placeholder=\"Password\" name=\"passwd\" />\n");
      out.write("              </div>\n");
      out.write("                <button type=\"submit\" name=\"submit\">Login</button>\n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <!-- end login section -->\n");
      out.write("\n");
      out.write("  <!-- info section -->\n");
      out.write("  <section class=\"info_section layout_padding\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-md-3\">\n");
      out.write("          <div class=\"info_course\">\n");
      out.write("            <h5>\n");
      out.write("              TOP RATED COURSE\n");
      out.write("            </h5>\n");
      out.write("            <p>\n");
      out.write("              There are many variations of passages of Lorem Ipsum available,\n");
      out.write("              but the majority have suffered alteration in some form, by\n");
      out.write("              injected humou\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <!-- end info section -->\n");
      out.write("\n");
      out.write("  <!-- footer section -->\n");
      out.write("  <footer class=\"container-fluid footer_section\">\n");
      out.write("    <p>\n");
      out.write("      &copy; 2021 All Rights Reserved By\n");
      out.write("      <a href=\"https://html.design/\">Free Html Templates</a>\n");
      out.write("    </p>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("  <footer class=\"container-fluid footer_section\">\n");
      out.write("\n");
      out.write("    <p>\n");
      out.write("      Distributed By\n");
      out.write("      <a href=\"https://themewagon.com/\">Themewagon</a>\n");
      out.write("    </p>\n");
      out.write("\n");
      out.write("</footer>\n");
      out.write("  <!-- footer section -->\n");
      out.write("\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-3.4.1.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    if(request.getParameter("submit")!=null)
    {
    String email=request.getParameter("mail");
    String passwd=request.getParameter("passwd");
    DbQuery db=new DbQuery();
    ResultSet rs=db.login(email,passwd);
    if(rs.next())
    {
        String usertype=rs.getString("user_type");
        session.setAttribute("utype", usertype);
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

      out.write('\n');
      out.write('\n');
      out.write("  </div>\r\n");
      out.write("  </section>\r\n");
      out.write("\r\n");
      out.write("  <!-- end event section -->\r\n");
      out.write("\r\n");
      out.write("  <!-- info section -->\r\n");
      out.write("  <section class=\"info_section layout_padding\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-3\">\r\n");
      out.write("          <div class=\"info_menu\">\r\n");
      out.write("            <h5>\r\n");
      out.write("              QUICK LINKS\r\n");
      out.write("            </h5>\r\n");
      out.write("            <ul class=\"navbar-nav  \">\r\n");
      out.write("              <li class=\"nav-item active\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"index.html\">Home <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"about.html\">Add Staff</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"course.html\"> View Staff</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"event.html\"> View Room </a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"contact.html\"> View Student </a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link\" href=\"login.html\">Logout</a>\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-3\">\r\n");
      out.write("          <div class=\"info_course\">\r\n");
      out.write("            <h5>\r\n");
      out.write("              TOP RATED COURSE\r\n");
      out.write("            </h5>\r\n");
      out.write("            <p>\r\n");
      out.write("              There are many variations of passages of Lorem Ipsum available,\r\n");
      out.write("              but the majority have suffered alteration in some form, by\r\n");
      out.write("              injected humou\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"col-md-5 offset-md-1\">\r\n");
      out.write("          <div class=\"info_news\">\r\n");
      out.write("            <h5>\r\n");
      out.write("              FOR ANY QUERY, PLEASE WRITE TO US\r\n");
      out.write("            </h5>\r\n");
      out.write("            <div class=\"info_contact\">\r\n");
      out.write("              <a href=\"\">\r\n");
      out.write("                Location\r\n");
      out.write("              </a>\r\n");
      out.write("              <a href=\"\">\r\n");
      out.write("                demo@gmail.com\r\n");
      out.write("              </a>\r\n");
      out.write("              <a href=\"\">\r\n");
      out.write("                Call : +01 1234567890\r\n");
      out.write("              </a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </section>\r\n");
      out.write("\r\n");
      out.write("  <!-- end info section -->\r\n");
      out.write("\r\n");
      out.write("  <!-- footer section -->\r\n");
      out.write("  <footer class=\"container-fluid footer_section\">\r\n");
      out.write("    <p>\r\n");
      out.write("      &copy; 2021 All Rights Reserved By\r\n");
      out.write("      <a href=\"https://html.design/\">Free Html Templates</a>\r\n");
      out.write("    </p>\r\n");
      out.write("  </footer>\r\n");
      out.write("  <footer class=\"container-fluid footer_section\">\r\n");
      out.write("\r\n");
      out.write("    <p>\r\n");
      out.write("      Distributed By\r\n");
      out.write("      <a href=\"https://themewagon.com/\">Themewagon</a>\r\n");
      out.write("    </p>\r\n");
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("  <!-- footer section -->\r\n");
      out.write("\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write('\n');
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
