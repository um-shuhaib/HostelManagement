package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class roomView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t.container{\n");
      out.write("\t\t\twidth: 60%;\n");
      out.write("\t\t\tmargin-right: 20%;\n");
      out.write("\t\t\tmargin-left:20%;\n");
      out.write("\t\t\tbackground-color: #F0F8FF;\n");
      out.write("\t\t\tpadding-top: 10px;\n");
      out.write("\t\t\tpadding-bottom: 10px;\n");
      out.write("\t\t}\n");
      out.write("\t\ttable,td,th{\n");
      out.write("\t\t\tborder-collapse: collapse;\n");
      out.write("\t\t\tborder: 2px solid black ;\n");
      out.write("\t\t}\n");
      out.write("\t\t.slt-hostel{\n");
      out.write("\t\t\twidth : 100% ; \n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("\t\t#edit, #delete{\n");
      out.write("\t\t\ttext-decoration: none;\n");
      out.write("\t\t\tpadding-left: 5px;\n");
      out.write("\t\t\tfont-weight: bold;\n");
      out.write("\t\t\tcolor: blue\n");
      out.write("\t\t}\n");
      out.write("\t\th2{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t\ttext-decoration: underline\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<h2>Room View</h2>\n");
      out.write("\t\t<form method=\"post\">\n");
      out.write("\t\t<div  class=\"slt-hostel\">\n");
      out.write("\t\t\t<label for=\"selectHostel\">Select Hostel : </label>\n");
      out.write("                        <select id=\"selectHostel\" name=\"selected_hostel\">\n");
      out.write("                            <option value=\"boys\">Boys</option>\n");
      out.write("                            <option value=\"girls\">Girls</option>\n");
      out.write("\t\t\t</select><br><br>\n");
      out.write("                        <input type=\"submit\" value=\"Submit\" name=\"selectHostel\" /><br><br>\n");
      out.write("                        \n");
      out.write("                    ");

                        DbQuery db=new DbQuery();
                        if(request.getParameter("selectHostel")!=null){
                            String hostel=request.getParameter("selected_hostel");                            
                            ResultSet rs=db.viewRoom(hostel);
                            if(rs.next()){
                    
      out.write("\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<table style=\"width: 98%;margin: 0 1% 0 1%;\">\n");
      out.write("\t\t\t\t<thead>\n");
      out.write("                                    <tr>\n");
      out.write("\t\t\t\t\t<th>SI NO.</th>\n");
      out.write("\t\t\t\t\t<th>Room NO.</th>\n");
      out.write("\t\t\t\t\t<th>Total Beds</th>\n");
      out.write("\t\t\t\t\t<th>Floor</th>\n");
      out.write("\t\t\t\t\t<th>Hostel</th>\n");
      out.write("\t\t\t\t\t<th style=\"width: 15% ;\">Edit</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                ");

                                    int i=1;
                                    do{
                                
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(i);
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("room_no"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("tot_beds"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("flr"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>");
      out.print(rs.getString("hostel"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t<td>\n");
      out.write("                                            <a href=\"editroom.jsp?id=");
      out.print(rs.getString("room_id"));
      out.write("\" >edit</a>\n");
      out.write("                                        <a href=\"deleteroom.jsp?id=");
      out.print(rs.getString("room_id"));
      out.write("\">delete</a>\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
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
      out.write("                    <h2 style=\"text-align:center\">NO DATA</h2>\n");
      out.write("                    ");

                    }}
                    
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</form>\n");
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
