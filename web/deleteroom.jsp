<%@page import="Dbcon.DbQuery"%>
<%
    DbQuery db=new DbQuery();
    String rid=request.getParameter("id");
    int i=db.deleteRoom(rid);
    if(i>0){
        response.sendRedirect("roomView.jsp");
    }
%>
