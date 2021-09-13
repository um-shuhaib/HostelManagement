package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class studentReg_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Hostel-Management</title>\r\n");
      out.write("\t<style>\r\n");
      out.write("\t\t.something {\r\n");
      out.write("\t\t\tbackground-color: #F0F8FF ;\r\n");
      out.write("\t\t\tmargin: 20px 30% 30% 30% ;\r\n");
      out.write("\t\t\tpadding: 10px 40px 60px 20px ;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tinput,label,textarea {\r\n");
      out.write("\t\t\tmargin-top: 5px ;\r\n");
      out.write("\t\t\tmargin-left: 80px ;\r\n");
      out.write("\t\t\tmargin-bottom: 5px ; \r\n");
      out.write("\t\t\tpadding-top: 10px ;\r\n");
      out.write("\t\t\tpadding-bottom: 8px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t#heading{\r\n");
      out.write("\t\t\ttext-align: center;\r\n");
      out.write("\t\t}\r\n");
      out.write("                \r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form method=\"post\">\r\n");
      out.write("  <div class=\"something\">\r\n");
      out.write("\t<h1 id=\"heading\">Student Registration</h1>\r\n");
      out.write("\r\n");
      out.write("\t<label for=\"name\">Name</label><br>\r\n");
      out.write("\t<input type=\"text\" name=\"name\" id=\"name\"><br>\r\n");
      out.write("\r\n");
      out.write("        <label for=\"Age\">AGE: </label>\r\n");
      out.write("\t<input type=\"text\" id=\"Age\" name=\"Age\" style=\"margin-left: 1px;width: 50px;\">\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t<input style=\"margin-top : 10px\" type=\"radio\" name=\"gender\" id=\"male\" value=\"male\">\r\n");
      out.write("        <label for=\"male\" style=\"margin-left: 0px\">Male</label>\r\n");
      out.write("\t<input type=\"radio\" name=\"gender\" id=\"female\" value=\"female\" style=\"margin-left: 5px\">\r\n");
      out.write("        <label for=\"female\" style=\"margin-left: 0px\">Female</label><br><br>\r\n");
      out.write("\r\n");
      out.write("\t<label for=\"address\">Address</label><br>\r\n");
      out.write("    <input type=\"text\" id=\"address\" name=\"address\"><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"fathname\">Name of Father</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"fathname\" id=\"fathname\" required><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"fatherno\">Phone</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"fatherno\" id=\"fatherno\" required><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"mothname\">Name of Mother</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"mothname\" id=\"mothname\" required><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"motherno\">Phone</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"motherno\" id=\"motherno\" required><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"guardname\">Name of Guardian</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"guardname\" id=\"guardname\" required><br>\r\n");
      out.write("\r\n");
      out.write("    <label for=\"guardno\">Phone</label><br>\r\n");
      out.write("    <input type=\"text\" name=\"guardno\" id=\"guardno\" required><br>\r\n");
      out.write("\r\n");
      out.write("\t<label for=\"college\">Name of School/College</label><br>\r\n");
      out.write("\t<input type=\"text\" id=\"college\" name=\"college\"><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"joindate\">Join Date</label><br>\r\n");
      out.write("\t<input type=\"date\" id=\"joindate\" name=\"joindate\" value=\"2000-01-01\"><br>\r\n");
      out.write("\t\r\n");
      out.write("\t<label for=\"roomno\">Room No.</label>\r\n");
      out.write("\t<select id=\"roomno\" name=\"roomid\">\r\n");
      out.write("\t\t\t\t<option value=\"-1\">Select</option>\r\n");
      out.write("                                ");

                                    DbQuery dq=new DbQuery();
                                    ResultSet rs=dq.viewRoom();
                                    while(rs.next())
                                    {
                                        
      out.write("\r\n");
      out.write("                                        <option value=\"");
      out.print(rs.getString("room_id"));
      out.write("\">\r\n");
      out.write("                                        ");
      out.print(rs.getString("room_no"));
      out.write("\r\n");
      out.write("                                        </option>\r\n");
      out.write("                                        ");

                                    }
                                
      out.write("\r\n");
      out.write("        </select><br>\r\n");
      out.write("\t<input type=\"submit\" value=\"Submit\" name=\"Submit\" style=\"margin-left: 130px;margin-top: 10%\" >\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");

    if(request.getParameter("Submit")!=null)
    {
    String studname=request.getParameter("name");
    String age=request.getParameter("Age");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String fathname=request.getParameter("fathname");
    String fathphone=request.getParameter("fatherno");
    String mothname=request.getParameter("mothname");
    String mothphone=request.getParameter("motherno");
    String guardname=request.getParameter("guardname");
    String guardphone=request.getParameter("guardno");
    String institute=request.getParameter("college");
    String joindate=request.getParameter("joindate");
    String roomid=request.getParameter("roomid");
    
    int i=dq.addStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid);
    if(i>0){
        
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            alert(\"Successfully registered\");\r\n");
      out.write("        </script>\r\n");
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
