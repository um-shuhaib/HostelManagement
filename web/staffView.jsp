

<%@page import="Dbcon.DbQuery"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
	<style>
		.something{
			width: 80%;
			margin-left: 10%;
			margin-right: 10%;
			padding: 10px;
			background-color: #F0F8FF ;
		}
		table,td,th{
			border-collapse: collapse;
			border: 2px solid black ;
		}
		a{
			text-decoration: none;
			font-weight: bold;
			color: blue;
		}
		h2{
			text-align: center;
			text-decoration: underline;
		}
	</style>
</head>
<body>
	<div class="something">
		<h2>View Staff</h2>
		<form method="post">
                    <%
                        DbQuery db=new DbQuery();
                        ResultSet rs=db.viewStaff();
                        if(rs.next()){
                    %>
			<table style="width: 98%;margin: 0 1% 0 1%;">
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
                        <h2 style="text-align:center">NO DATA</h2>
                        <%
                    
                        }
                    %>
		</form>
	</div>
</body>
</html>