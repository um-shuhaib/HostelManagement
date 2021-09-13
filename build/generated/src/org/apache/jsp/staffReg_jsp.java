package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dbcon.DbQuery;

public final class staffReg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Hostel-Management</title>\n");
      out.write("\t<style>\n");
      out.write("\t\t.something {\n");
      out.write("\t\t\tbackground-color: #F0F8FF ;\n");
      out.write("\t\t\tmargin: 20px 30% 30% 30% ;\n");
      out.write("\t\t\tpadding: 10px 40px 60px 20px ;\n");
      out.write("\t\t\talign-items: center;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput,label {\n");
      out.write("\t\t\tmargin-top: 5px ;\n");
      out.write("\t\t\tmargin-left: 80px ;\n");
      out.write("\t\t\tmargin-bottom: 5px ; \n");
      out.write("\t\t\tpadding-top: 10px ;\n");
      out.write("\t\t\tpadding-bottom: 8px;\n");
      out.write("\t\t}\n");
      out.write("\t\th2{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"something\">\n");
      out.write("\t\t<h2>Staff Registration</h2>\n");
      out.write("\t<form method=\"post\" style=\"margin-top: 50px;\">\n");
      out.write("\t\t<label for=\"staff_name\">Staff Name</label><br>\n");
      out.write("\t\t<input type=\"text\" name=\"staff_name\" id=\"staff_name\" placeholder=\"Staff Name\" required><br>\n");
      out.write("\n");
      out.write("\t\t<input style=\"margin-top : 10px\" type=\"radio\" name=\"gender\" id=\"male\" value=\"male\">\n");
      out.write("\t\t<label for=\"male\" style=\"margin-left: 0px\">Male</label><br>\n");
      out.write("\t\t<input type=\"radio\" name=\"gender\" id=\"female\" value=\"female\">\n");
      out.write("\t\t<label for=\"female\" style=\"margin-left: 0px\">Female</label><br><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"age\">AGE : </label>\n");
      out.write("\t\t<input type=\"text\" id=\"age\" name=\"age\" style=\"width: 40px; margin-left: 1px;\">\n");
      out.write("\n");
      out.write("\t\t<div style=\"margin-top: 8px; margin-bottom: 8px\">\n");
      out.write("\t\t<label for=\"Hostel\">Hostel</label>\n");
      out.write("    \t<select id=\"hostel\" name=\"hostel\">\n");
      out.write("\t\t\t<option value=\"Boys\">Boys</option>\n");
      out.write("\t\t\t<option value=\"Girls\">Girls</option>\n");
      out.write("\n");
      out.write("\t\t</select><br>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<label for=\"salary\">Salary</label><br>\n");
      out.write("\t\t<input type=\"text\" name=\"salary\" id=\"salary\" required><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"address\">Address</label><br>\n");
      out.write("\t\t<input type=\"text\" name=\"address\" id=\"address\" required><br><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"designation\">Designation</label>\n");
      out.write("\t\t<select id=\"designation\" name=\"designation\">\n");
      out.write("                    <option value=\"-1\">Select</option>\n");
      out.write("                    <option value=\"Sweeper\">Sweeper</option>\n");
      out.write("                    <option value=\"Warden\">Warden</option>\n");
      out.write("                    <option value=\"Security\">Security</option>\n");
      out.write("                    <option value=\"Cook\">Cook</option>\n");
      out.write("\t\t</select><br><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"phone\">Phone</label><br>\n");
      out.write("\t\t<input type=\"text\" name=\"phone\" id=\"phone\" required><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"email\">Email</label><br>\n");
      out.write("\t\t<input type=\"email\" name=\"email\" id=\"email\" placeholder=\"Email\" required><br>\n");
      out.write("\n");
      out.write("\t\t<label for=\"password\">Password</label><br>\n");
      out.write("\t\t<input type=\"password\" name=\"password\" id=\"password\" placeholder=\"Password\" required><br>\n");
      out.write("\n");
      out.write("                <input type=\"submit\" value=\"Submit\" name=\"Submit\" style=\"margin-left: 250px;margin-top: 10%\" >\n");
      out.write("\t\n");
      out.write("\t</form>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");

    if(request.getParameter("Submit")!=null)
    {
    String staff_name=request.getParameter("staff_name");
    String gender=request.getParameter("gender");
    String age=request.getParameter("age");
    String hostel=request.getParameter("hostel");
    String salary=request.getParameter("salary");
    String address=request.getParameter("address");
    String designation=request.getParameter("designation");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
//    
DbQuery dq=new DbQuery();
int i=dq.addStaff(staff_name, age, gender, hostel, salary, address, designation, phone, email,password);
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
