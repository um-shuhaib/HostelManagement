package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Dbcon.DbQuery;

public final class editstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t\tmargin: 20px 30% 30% 30% ;\n");
      out.write("\t\t\tpadding: 10px 40px 60px 20px ;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput,label,textarea {\n");
      out.write("\t\t\tmargin-top: 5px ;\n");
      out.write("\t\t\tmargin-left: 80px ;\n");
      out.write("\t\t\tmargin-bottom: 5px ; \n");
      out.write("\t\t\tpadding-top: 10px ;\n");
      out.write("\t\t\tpadding-bottom: 8px;\n");
      out.write("\t\t}\n");
      out.write("\t\t#heading{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("                \n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<form method=\"post\">\n");
      out.write("    ");
 String id=request.getParameter("id"); 
    DbQuery db=new DbQuery();
    ResultSet rs=db.viewOneStudent(id);
    if(rs.next())
    {
    
      out.write("\n");
      out.write("    \n");
      out.write("  <div class=\"something\">\n");
      out.write("\t<h1 id=\"heading\">Update Student</h1>\n");
      out.write("\n");
      out.write("\t<label for=\"name\">Name</label><br>\n");
      out.write("        <input type=\"text\" name=\"name\" id=\"name\" value=\"");
      out.print(rs.getString("stud_name"));
      out.write("\"><br>\n");
      out.write("\n");
      out.write("        <label for=\"Age\">AGE: </label>\n");
      out.write("        <input type=\"text\" id=\"Age\" name=\"Age\" value=\"");
      out.print(rs.getString("age"));
      out.write("\" style=\"margin-left: 1px;width: 50px;\">\n");
      out.write("\t<br>\n");
      out.write("\n");
      out.write("        <input style=\"margin-top : 10px\" type=\"radio\" name=\"gender\" id=\"male\" value=\"male\" ");
if(rs.getString("gender").equalsIgnoreCase("male")){
      out.write("checked=\"checked\"");
}
      out.write(">\n");
      out.write("        <label for=\"male\" style=\"margin-left: 0px\">Male</label>\n");
      out.write("\t<input type=\"radio\" name=\"gender\" id=\"female\" value=\"female\" style=\"margin-left: 5px\" ");
if(rs.getString("gender").equalsIgnoreCase("female")){
      out.write("checked=\"checked\"");
}
      out.write(">\n");
      out.write("        <label for=\"female\" style=\"margin-left: 0px\">Female</label><br><br>\n");
      out.write("\n");
      out.write("\t<label for=\"address\">Address</label><br>\n");
      out.write("        <input type=\"text\" id=\"address\" name=\"address\" value=\"");
      out.print(rs.getString("address"));
      out.write("\"><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"fathname\">Name of Father</label><br>\n");
      out.write("        <input type=\"text\" name=\"fathname\" id=\"fathname\" value=\"");
      out.print(rs.getString("father_name"));
      out.write("\" required><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"fatherno\">Phone</label><br>\n");
      out.write("        <input type=\"text\" name=\"fatherno\" id=\"fatherno\" value=\"");
      out.print(rs.getString("fath_phone"));
      out.write("\" required><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"mothname\">Name of Mother</label><br>\n");
      out.write("        <input type=\"text\" name=\"mothname\" id=\"mothname\" value=\"");
      out.print(rs.getString("mother_name"));
      out.write("\" required><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"motherno\">Phone</label><br>\n");
      out.write("        <input type=\"text\" name=\"motherno\" id=\"motherno\" value=\"");
      out.print(rs.getString("moth_phone"));
      out.write("\" required><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"guardname\">Name of Guardian</label><br>\n");
      out.write("        <input type=\"text\" name=\"guardname\" id=\"guardname\" value=\"");
      out.print(rs.getString("guard_name"));
      out.write("\" required><br>\n");
      out.write("\n");
      out.write("    <label for=\"guardno\">Phone</label><br>\n");
      out.write("    <input type=\"text\" name=\"guardno\" id=\"guardno\" value=\"");
      out.print(rs.getString("guard_phone"));
      out.write("\" required><br>\n");
      out.write("\n");
      out.write("\t<label for=\"college\">Name of School/College</label><br>\n");
      out.write("        <input type=\"text\" id=\"college\" name=\"college\" value=\"");
      out.print(rs.getString("institute"));
      out.write("\"><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"joindate\">Join Date</label><br>\n");
      out.write("\t<input type=\"date\" id=\"joindate\" name=\"joindate\" value=\"2000-01-01\"><br>\n");
      out.write("\t\n");
      out.write("\t<label for=\"roomno\">Room No.</label>\n");
      out.write("\t<select id=\"roomno\" name=\"roomid\">\n");
      out.write("\t\t\t\t<option value=\"-1\">Select</option>\n");
      out.write("                                ");

                                    DbQuery dq=new DbQuery();
                                    ResultSet rs1=dq.viewRoom();
                                    while(rs1.next())
                                    {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(rs.getString("room_id"));
      out.write("\">\n");
      out.write("                                        ");
      out.print(rs.getString("room_no"));
      out.write("\n");
      out.write("                                        </option>\n");
      out.write("                                        ");

                                    }
                                
      out.write("\n");
      out.write("        </select><br>\n");
      out.write("\t<input type=\"submit\" value=\"Update\" name=\"Submit\" style=\"margin-left: 130px;margin-top: 10%\" >\n");
      out.write("  </div>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("  \n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");

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
    
    int i=db.editStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid, id);
    if(i>0){
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Successfully Updated Student Details\");\n");
      out.write("            window.location=\"studentView.jsp\";\n");
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
