<%@page import="Dbcon.DbQuery"%>
<%
    DbQuery db=new DbQuery();
    String sid=request.getParameter("id");
    int i=db.deleteStaff(sid);
    if(i>0){
        response.sendRedirect("staffView.jsp");
    }
%>
