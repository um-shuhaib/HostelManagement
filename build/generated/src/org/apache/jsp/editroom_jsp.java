package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class editroom_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\tbackground-color: #F0F8FF ;\n");
      out.write("\t\t\tmargin: 20px 35% 30% 35% ;\n");
      out.write("\t\t\tpadding: 20px 40px 60px 80px ;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput {\n");
      out.write("\t\t\tmargin-top: 5px ; \n");
      out.write("\t\t\tmargin-bottom: 5px ; \n");
      out.write("\t\t\tpadding-top: 10px ;\n");
      out.write("\t\t\tpadding-bottom: 8px;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"something\">\n");
      out.write("\t\t<h2>Update Room</h2>\n");
      out.write("\t\t<form method=\"post\">\n");
      out.write("                    ");

                    String id=request.getParameter("id");
                    DbQuery db=new DbQuery();
                    ResultSet rs=db.viewOneroom(id);
                    if(rs.next())
                    {
                    
      out.write("\n");
      out.write("\t\t\t<label for=\"room\">Room No. : </label>\n");
      out.write("                        <input type=\"text\" name=\"roomNo\" id=\"room\" value=\"");
      out.print(rs.getString("room_no"));
      out.write("\"><br>\n");
      out.write("\n");
      out.write("\t\t\t<label for=\"beds\">Total Beds : </label>\n");
      out.write("                        <input type=\"text\" name=\"beds\" id=\"beds\" value=\"");
      out.print(rs.getString("tot_beds"));
      out.write("\"><br>\n");
      out.write("\n");
      out.write("\t\t\t<div style=\"margin-top: 13px\">\n");
      out.write("\t\t\t<label for=\"floor\">Floor : </label>\n");
      out.write("\t\t\t<select id=\"floor\" name=\"floor\">\n");
      out.write("\t\t\t\t<option value=\"-1\">Select</option>\n");
      out.write("                                ");

                                    DbQuery dq=new DbQuery();
                                    ResultSet rs1=dq.viewOneroom("rid");
                                    while(rs1.next())
                                    {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(rs.getString("room_id"));
      out.write("\">\n");
      out.write("                                        ");
      out.print(rs.getString("flr"));
      out.write("\n");
      out.write("                                        </option>\n");
      out.write("                                        ");

                                    }
                                
      out.write("\n");
      out.write("\t\t\t</select><br><br>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<label for=\"hostel\">Hostel : </label>\n");
      out.write("\t\t\t<select id=\"hostel\" name=\"hostel\">\n");
      out.write("\t\t\t\t<option value=\"boys\">Boys</option>\n");
      out.write("\t\t\t\t<option value=\"girls\">Girls</option>\n");
      out.write("\t\t\t</select><br>\n");
      out.write("\n");
      out.write("\t\t\t<input type=\"submit\" value=\"Update\" name=\"Submit\" style=\"margin-left: 75px;margin-top: 10%\">\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\t\t</form>\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");

    if(request.getParameter("Submit")!=null)
    {
    String roomno=request.getParameter("roomNo");
    String totbeds=request.getParameter("beds");
    String flr=request.getParameter("floor");
    String hostel=request.getParameter("hostel");
    int i=db.editRoom(roomno, totbeds, flr, hostel, id);
    if(i>0){
    
      out.write("\n");
      out.write("    <script>\n");
      out.write("        alert(\"Successfully registered\");\n");
      out.write("    </script>\n");
      out.write("    ");

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
