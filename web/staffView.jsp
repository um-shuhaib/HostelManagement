<%@page import="Dbcon.DbQuery"%>
<%@page import="java.sql.*"%>

<%@include file="Header.jsp" %>
	<div>
		<h2>STAFF DETAILS</h2>
		<form method="post">
      <%
          DbQuery db=new DbQuery();
          ResultSet rs=db.viewStaff();
          if(rs.next()){
      %>
						<table id="view-table">
							<thead>
								<tr>
									<th>SI NO.</th>
									<th>Name</th>
									<th>Age</th>
									<th>Gender</th>
									<th>Hostel</th>
									<th>Salary</th>
									<th>Address</th>
									<th>Designation</th>
									<th>Phone</th>
									<th>Email</th>
									<th>Edit</th>
								</tr>
							</thead>
            <%
            	int i=1;
              do{
            %>
								<tr>
									<td><%=i%></td>
									<td><%=rs.getString("staff_name") %></td>
									<td><%=rs.getString("age")%></td>
									<td><%=rs.getString("gender")%></td>
									<td><%=rs.getString("hostel")%></td>
									<td><%=rs.getString("salary")%></td>
									<td><%=rs.getString("address")%></td>
									<td><%=rs.getString("designation")%></td>
									<td><%=rs.getString("phone")%></td>
									<td><%=rs.getString("email")%></td>
									<td>
										<a href="editstaff.jsp?id=<%=rs.getString("staff_id")%>">Edit</a>
										<a href="deletestaff.jsp?id=<%=rs.getString("staff_id")%>">Delete</a>
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
						%>
		</form>
	</div>
<%@include file="Footer.jsp" %>
<link rel="stylesheet" type="text/css" href="css/custom.css" />
