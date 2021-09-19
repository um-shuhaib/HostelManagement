<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
	<form method="post">
		<table>
			<tr>
				<td><label for="selectHostel">Select Hostel </label></td>
			</tr>

			<tr>
				<td>
					<select id="selectHostel" name="hostel">
						<option value="Boys">Boys</option>
						<option value="Girls">Girls</option>
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" name="btn" value="Submit"/>
	</div>
		<%
      if(request.getParameter("btn")!=null){
        String hostel=request.getParameter("hostel");
        DbQuery db=new DbQuery();
        ResultSet rs=db.viewStudent(hostel);
        if(rs.next()){
			  	%>
					<table id="view-table" class="view-width">
						<thead>
							<tr>
								<th>SI NO.</th>
								<th>Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Address</th>
								<th>Father's Name</th>
								<th>Phone</th>
								<th>Mother's Name</th>
								<th>Phone</th>
								<th>Guardian</th>
								<th>Phone</th>
								<th>Name of College/School</th>
								<th>Join Date</th>
								<th>Room No.</th>
								<th>Photo</th>
								<th>Edit/Delete</th>
							</tr>
						</thead>
			      <%
        	int i=1;
        	do{
    				%>
						<tr>
							<td><%=i%></td>
							<td><%=rs.getString("stud_name")%></td>
							<td><%=rs.getString("age")%></td>
							<td><%=rs.getString("gender")%></td>
							<td><%=rs.getString("address")%></td>
							<td><%=rs.getString("father_name")%></td>
							<td><%=rs.getString("fath_phone")%></td>
							<td><%=rs.getString("mother_name")%></td>
							<td><%=rs.getString("moth_phone")%></td>
							<td><%=rs.getString("guard_name")%></td>
							<td><%=rs.getString("guard_phone")%></td>
							<td><%=rs.getString("institute")%></td>
							<td><%=rs.getString("join_date")%></td>
							<td><%=rs.getString("room_id")%></td>
							<td>
								<img src="studentphoto/<%=rs.getString("photo")%>" height="100" width="75"/><br>
								<a href="photo.jsp?id=<%=rs.getString("student_id")%>&name=<%=rs.getString("stud_name")%>" >Add/Change</a>
							</td>
							<td>
								<a href="editstudent.jsp?id=<%=rs.getString("student_id")%>" >Edit</a>
								<a href="deletestudent.jsp?id=<%=rs.getString("student_id")%>">Delete</a>
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
					<div class="container" align="center">
						<h2>NO DATA</h2>
					</div>

					<%
				}
			}
					%>
	</form>
	<%@include file="Footer.jsp" %>
	<link rel="stylesheet" type="text/css" href="css/custom.css" />
