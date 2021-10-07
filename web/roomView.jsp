<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
</div>
<div>
	<form method="post">
            <div class="body">
                <div class="content">
                  <h1>ROOM DETAILS</h1>
                </div>

                <div class="content">
                  <select id="selectHostel" name="selected_hostel">
                    <option value="Boys">Boys</option>
                    <option value="Girls">Girls</option>
                  </select>
                </div>

                <div class="content">
                  <input type="submit" value="Submit" name="selectHostel" />
                </div>
            </div>
<div class="container" align="center">

		<%
		DbQuery db=new DbQuery();
		if(request.getParameter("selectHostel")!=null){
			String hostel=request.getParameter("selected_hostel");
			ResultSet rs=db.viewRoom(hostel);
			if(rs.next()){
		%>
				<table id="view-table">
					<thead>
						<tr>
							<th>SI NO.</th>
							<th>Room NO.</th>
							<th>Total Beds</th>
							<th>Floor</th>
							<th>Hostel</th>
							<th>Edit</th>
						</tr>
					</thead>
					<%
						int i=1;
						do{
							%>
							<tr>
								<td><%=i%></td>
								<td><%=rs.getString("room_no")%></td>
								<td><%=rs.getString("tot_beds")%></td>
								<td><%=rs.getString("flr")%></td>
								<td><%=rs.getString("hostel")%></td>
								<td>
									<a href="editroom.jsp?id=<%=rs.getString("room_id")%>" >edit</a>
									<a href="deleteroom.jsp?id=<%=rs.getString("room_id")%>">delete</a>
								</td>
							</tr>
							<%
							i++;
						}while(rs.next());
					%>
				</table>
        <%
    	}
    	else{
        %>
          <h2>NO DATA</h2>
        <%
    	}
		}
        %>
	</form>
</div>
<%@include file="Footer.jsp" %>
<link rel="stylesheet" type="text/css" href="css/custom.css" />
