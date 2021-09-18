<%@page import="Dbcon.DbQuery"%>
<%
    DbQuery db=new DbQuery();
    String stid=request.getParameter("id");
    int i=db.deleteStudent(stid);
    if(i>0){
        response.sendRedirect("studentView.jsp");
    }
%>
