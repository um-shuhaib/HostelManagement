<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
	<h1>Student Registration</h1>
	<form method="post">
		<table>
			<tr>
				<td><label for="name">Name</label></td>
				<td><input type="text" name="name" id="name" required></td>
			</tr>

			<tr>
				<td><label for="Age">AGE</label></td>
				<td><input type="text" id="Age" name="Age"></td>
			</tr>

			<tr>
				<td><label for="gender">Gender</lable></td>
				<td>
					<input type="radio" name="gender" id="male" value="male">
						<label for="male">Male</label>
					<input type="radio" name="gender" id="female" value="female">
						<label for="female">Female</label>
				</td>
			</tr>

			<tr>
				<td><label for="address">Address</label></td>
				<td><textarea id="address" name="address" cols="20" rows="5" required></textarea></td>
				<%-- <td><input type="text" id="address" name="address"></td> --%>
			</tr>

			<tr>
				<td><label for="fathname">Name of Father</label></td>
				<td><input type="text" name="fathname" id="fathname" required></td>
			</tr>

			<tr>
				<td><label for="fatherno">Phone</label></td>
				<td><input type="text" name="fatherno" id="fatherno" required></td>
			</tr>

			<tr>
				<td><label for="mothname">Name of Mother</label></td>
				<td><input type="text" name="mothname" id="mothname" required></td>
			</tr>

			<tr>
				<td><label for="motherno">Phone</label></td>
				<td><input type="text" name="motherno" id="motherno" required></td>
			</tr>

			<tr>
				<td><label for="guardname">Name of Guardian</label></td>
				<td><input type="text" name="guardname" id="guardname" required></td>
			</tr>

			<tr>
				<td><label for="guardno">Phone</label></td>
				<td><input type="text" name="guardno" id="guardno" required></td>
			</tr>

			<tr>
				<td><label for="college">Name of School/College</label></td>
				<td><input type="text" id="college" name="college"></td>
			</tr>

			<tr>
				<td><label for="joindate">Join Date</label></td>
				<td><input type="date" id="joindate" name="joindate" value="2000-01-01"></td>
			</tr>

			<tr>
				<td><label for="roomno">Room No.</label></td>
				<td>
					<select id="roomno" name="roomid">
						<option value="-1">Select</option>
							<%
			        DbQuery dq=new DbQuery();
			        ResultSet rs=dq.viewRoom();
			        while(rs.next()){
							%>
								<option value="<%=rs.getString("room_id")%>">
									<%=rs.getString("room_no")%>
								</option>
							<%
			        }
							%>
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="Submit" name="Submit">
	</form>
<%@include file="Footer.jsp" %>

<%
  if(request.getParameter("Submit")!=null){
    String studname=request.getParameter("name");
    String age=request.getParameter("Age");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String fathname=request.getParameter("fathname");
    String fathphone=request.getParameter("fatherno");
    String mothname=request.getParameter("mothname");
    String mothphone=request.getParameter("motherno");
    String guardname=request.getParameter("guardname");
    String guardphone=request.getParameter("guardno");
    String institute=request.getParameter("college");
    String joindate=request.getParameter("joindate");
    String roomid=request.getParameter("roomid");

    int i=dq.addStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid);
    if(i>0){
      %>
      <script>
          alert("Successfully registered");
      </script>
      <%
    }
  }
%>
