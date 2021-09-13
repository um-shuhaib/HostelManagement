package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dbcon.DbQuery;
import java.sql.*;

public final class staffView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Hostel-Management</title>\n");
      out.write("\t<style>\n");
      out.write("\t\t.something{\n");
      out.write("\t\t\twidth: 80%;\n");
      out.write("\t\t\tmargin-left: 10%;\n");
      out.write("\t\t\tmargin-right: 10%;\n");
      out.write("\t\t\tpadding: 10px;\n");
      out.write("\t\t\tbackground-color: #F0F8FF ;\n");
      out.write("\t\t}\n");
      out.write("\t\ttable,td,th{\n");
      out.write("\t\t\tborder-collapse: collapse;\n");
      out.write("\t\t\tborder: 2px solid black ;\n");
      out.write("\t\t}\n");
      out.write("\t\ta{\n");
      out.write("\t\t\ttext-decoration: none;\n");
      out.write("\t\t\tfont-weight: bold;\n");
      out.write("\t\t\tcolor: blue;\n");
      out.write("\t\t}\n");
      out.write("\t\th2{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t\ttext-decoration: underline;\n");
      out.write("\t\t}\n");
      out.write("\t\t#back-btn{\n");
      out.write("\t\t\ttext-decoration: none;\n");
      out.write("\t\t\tfont-weight: bold;\n");
      out.write("\t\t\tfloat: right;\n");
      out.write("\t\t\tmargin: 20px 0 0 0;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"something\">\n");
      out.write("\t\t<h2>View Staff</h2>\n");
      out.write("\t\t<form method=\"post\">\n");
      out.write("                    ");

                        DbQuery db=new DbQuery();
                        ResultSet rs=db.viewStaff();
                        if(rs.next()){
                    
      out.write("\n");
      out.write("\t\t\t<table style=\"width: 98%;margin: 0 1% 0 1%;\">\n");
      out.write("\t\t\t\t<thead>\n");
      out.write("                                    <tr>\n");
      out.write("\t\t\t\t\t<th>SI NO.</th>\n");
      out.write("\t\t\t\t\t<th>Name</th>\n");
      out.write("\t\t\t\t\t<th>Age</th>\n");
      out.write("\t\t\t\t\t<th>Gender</th>\n");
      out.write("\t\t\t\t\t<th>Hostel</th>\n");
      out.write("\t\t\t\t\t<th>Salary</th>\n");
      out.write("\t\t\t\t\t<th>Address</th>\n");
      out.write("\t\t\t\t\t<th>Designation</th>\n");
      out.write("\t\t\t\t\t<th>Phone</th>\n");
      out.write("\t\t\t\t\t<th>Email</th>\n");
      out.write("\t\t\t\t\t<th>Edit</th>\n");
      out.write("                                    </tr>\n");
      out.write("\t\t\t\t</thead>\n");
      out.write("                                ");

                                    int i=1;
                                    do{
                                
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(i);
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("staff_name") );
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("age"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("gender"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("hostel"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("salary"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("address"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("designation"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("phone"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("                                            <a href=\"editstaff.jsp?id");
      out.print(rs.getString("staff_id"));
      out.write("\">Edit</a>\n");
      out.write("                                            <a href=\"deletestaff.jsp?id=");
      out.print(rs.getString("staff_id"));
      out.write("\">Delete</a>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("                                ");

                                    i++;
                                    }while(rs.next());
                                
      out.write("\n");
      out.write("\t\t\t</table>\n");
      out.write("                    ");

                        }
                    else{
                        
      out.write("\n");
      out.write("                        <h2 style=\"text-align:center\">NO DATA</h2>\n");
      out.write("                        ");

                    
                        }
                    
      out.write("\n");
      out.write("\t\t</form>\n");
      out.write("\t\t<a href=\"staffView.html\" id=\"back-btn\">back</a>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
