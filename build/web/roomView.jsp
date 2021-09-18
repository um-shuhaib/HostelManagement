<%@include file="Header.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
</head>
<body>
	<div>
		<h2>Room View</h2>
		<form method="post">
		<div>
			<label for="selectHostel">Select Hostel : </label>
                        <select id="selectHostel" name="selected_hostel">
                            <option value="boys">Boys</option>
                            <option value="girls">Girls</option>
			</select><br><br>
                        <input type="submit" value="Submit" name="selectHostel" /><br><br>

                    <%
                        DbQuery db=new DbQuery();
                        if(request.getParameter("selectHostel")!=null){
                            String hostel=request.getParameter("selected_hostel");
                            ResultSet rs=db.viewRoom(hostel);
                            if(rs.next()){
                    %>

		</div>
		<div>
			<table>
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
                    }}
                    %>
		</div>
		</form>
	</div>
</body>
</html>

<%@include file="Footer.jsp" %>
