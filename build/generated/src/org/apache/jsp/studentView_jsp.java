package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class studentView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Hostel-Management</title>\n");
      out.write("\t\t<style>\n");
      out.write("\t\t.something{\n");
      out.write("\t\t\twidth: 92%;\n");
      out.write("\t\t\tmargin-left: 4%;\n");
      out.write("\t\t\tmargin-right: 4%;\n");
      out.write("\t\t\tpadding: 10px ;\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("\t\ttable{\n");
      out.write("\t\t\twidth: 98%;\n");
      out.write("\t\t\tmargin-left: 1%;\n");
      out.write("\t\t\tmargin-right: 1%;\n");
      out.write("                        background-color: #F0F8FF ;\n");
      out.write("\t\t}\n");
      out.write("\t\ttable,td,th{\n");
      out.write("\t\t\tborder-collapse: collapse;\t\t\t\n");
      out.write("\t\t\tborder: 2px solid black ;\n");
      out.write("\t\t}\n");
      out.write("\t\tbutton{\n");
      out.write("\t\t\tmargin-left: 8px;\n");
      out.write("\t\t\tborder-radius: 5px;\n");
      out.write("\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"something\">\n");
      out.write("\t\t<form method=\"post\">\n");
      out.write("\t\t\t<label for=\"selectHostel\">Select Hostel </label>\n");
      out.write("                        <select id=\"selectHostel\" name=\"hostel\">\n");
      out.write("\t\t\t\t<option value=\"-1\">Select</option>\n");
      out.write("                                <option value=\"Boys\">Boys</option>\n");
      out.write("                                <option value=\"Girls\">Girls</option>\n");
      out.write("\t\t\t</select><br><br>\n");
      out.write("                        <input type=\"submit\" name=\"btn\" value=\"Submit\"/>\n");
      out.write("                        \n");
      out.write("                        <br><br>\n");
      out.write("                        ");

                        if(request.getParameter("btn")!=null){
                            String hostel=request.getParameter("hostel");
                            DbQuery db=new DbQuery();
                            ResultSet rs=db.viewStudent(hostel);
                            if(rs.next()){
                        
      out.write("\n");
      out.write("\t\t\t<table>\n");
      out.write("\t\t\t\t<thead>\n");
      out.write("                                    <tr>\n");
      out.write("\t\t\t\t\t<th>SI NO.</th>\n");
      out.write("\t\t\t\t\t<th>Name</th>\n");
      out.write("\t\t\t\t\t<th>Age</th>\n");
      out.write("\t\t\t\t\t<th>Gender</th>\n");
      out.write("\t\t\t\t\t<th>Address</th>\n");
      out.write("\t\t\t\t\t<th>Father's Name</th>\n");
      out.write("\t\t\t\t\t<th>Phone</th>\n");
      out.write("\t\t\t\t\t<th>Mother's Name</th>\n");
      out.write("\t\t\t\t\t<th>Phone</th>\n");
      out.write("\t\t\t\t\t<th>Guardian</th>\n");
      out.write("\t\t\t\t\t<th>Phone</th>\n");
      out.write("\t\t\t\t\t<th>Name of College/School</th>\n");
      out.write("\t\t\t\t\t<th>Join Date</th>\n");
      out.write("\t\t\t\t\t<th>Room No.</th>\n");
      out.write("                                        <th>Photo</th>\n");
      out.write("                                        <th>Edit/Delete</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                ");

                                    int i=1;
                                    do{
                                
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<td>");
      out.print(i);
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("stud_name"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("age"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("gender"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("address"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("father_name"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("fath_phone"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("mother_name"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("moth_phone"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("guard_name"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("guard_phone"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("institute"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("join_date"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("room_id"));
      out.write("</td>\n");
      out.write("                                        <td><img src=\"studentphoto");
      out.print(rs.getString("photo"));
      out.write("\" height=\"100\" width=\"75\"/><br>\n");
      out.write("                                        <a href=\"photo.jsp?id=");
      out.print(rs.getString("photo"));
      out.write("\" >ADD/CHANGE</a>\n");
      out.write("                                        </td>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("                                            <a href=\"editstudent.jsp?id=");
      out.print(rs.getString("student_id"));
      out.write("\" >Edit</a>\n");
      out.write("                                                <a href=\"deletestudent.jsp?id=");
      out.print(rs.getString("student_id"));
      out.write("\">Delete</a>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\n");
      out.write("                                ");

                                    i++;
                                    }while(rs.next());
                                
      out.write("\n");
      out.write("\t\t\t</table>\n");
      out.write("                        ");

                        }
                        else
                        {
                        
      out.write("\n");
      out.write("                        <h2 style=\"text-align:center\">NO DATA</h2>\n");
      out.write("                        ");

                        }}
                        
      out.write("\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
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
