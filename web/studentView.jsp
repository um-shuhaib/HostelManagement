
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
		<style>
		.something{
			width: 92%;
			margin-left: 4%;
			margin-right: 4%;
			padding: 10px ;
			text-align: center;
		}
		table{
			width: 98%;
			margin-left: 1%;
			margin-right: 1%;
                        background-color: #F0F8FF ;
		}
		table,td,th{
			border-collapse: collapse;			
			border: 2px solid black ;
		}
		button{
			margin-left: 8px;
			border-radius: 5px;

		}
	</style>
</head>
<body>
	<div class="something">
		<form method="post">
			<label for="selectHostel">Select Hostel </label>
                        <select id="selectHostel" name="hostel">
				<option value="-1">Select</option>
                                <option value="Boys">Boys</option>
                                <option value="Girls">Girls</option>
			</select><br><br>
                        <input type="submit" name="btn" value="Submit"/>
                        
                        <br><br>
                        <%
                        if(request.getParameter("btn")!=null){
                            String hostel=request.getParameter("hostel");
                            DbQuery db=new DbQuery();
                            ResultSet rs=db.viewStudent(hostel);
                            if(rs.next()){
                        %>
			<table>
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
                                        <td><img src="studentphoto/<%=rs.getString("photo")%>" height="100" width="75"/><br>
                                        <a href="photo.jsp?id=<%=rs.getString("student_id")%>&name=<%=rs.getString("stud_name")%>" >ADD/CHANGE</a>
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
                        else
                        {
                        %>
                        <h2 style="text-align:center">NO DATA</h2>
                        <%
                        }}
                        %>
		</form>
	</div>


</body>
</html>