<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
	<form method="post">
    <%
	    String id=request.getParameter("id");
	    DbQuery db=new DbQuery();
	    ResultSet rs=db.viewOneStudent(id);
	    if(rs.next()){
    %>

  			<div>
					<h1>Update Student</h1>
					<table>
						<tr>
							<td><label for="name">Name</label></td>
							<td><input type="text" name="name" id="name" value="<%=rs.getString("stud_name")%>" required></td>
						</tr>
						<tr>
							<td><label for="Age">Age</label></td>
							<td><input type="text" id="Age" name="Age" value="<%=rs.getString("age")%>"></td>
						</tr>
						<tr>
							<td><label for="">Gender</lable></td>
							<td>
								<input type="radio" name="gender" id="male" value="male"
									<%if(rs.getString("gender").equalsIgnoreCase("male")){%>
									checked="checked" <%}%>>
				        	<label for="male">Male</label>
								<input type="radio" name="gender" id="female" value="female"
									<%if(rs.getString("gender").equalsIgnoreCase("female")){%>
									checked="checked" <%}%>>
				        	<label for="female">Female</label>
							</td>
						</tr>
						<tr>
							<td><label for="address">Address</label></td>
							<td><textarea id="address" name="address" value="<%=rs.getString("address")%>" cols="20" rows="5" required></textarea></td>
							<%-- <td><input type="text" id="address" name="address" value="<%=rs.getString("address")%>"></td> --%>
						</tr>
						<tr>
							<td><label for="fathname">Name of Father</label></td>
							<td><input type="text" name="fathname" id="fathname" value="<%=rs.getString("father_name")%>" required></td>
						</tr>
						<tr>
							<td><label for="fatherno">Phone</label></td>
							<td><input type="text" name="fatherno" id="fatherno" value="<%=rs.getString("fath_phone")%>" required></td>
						</tr>
						<tr>
							<td><label for="mothname">Name of Mother</label></td>
							<td><input type="text" name="mothname" id="mothname" value="<%=rs.getString("mother_name")%>" required></td>
						</tr>
						<tr>
							<td><label for="motherno">Phone</label></td>
							<td><input type="text" name="motherno" id="motherno" value="<%=rs.getString("moth_phone")%>" required></td>
						</tr>
						<tr>
							<td><label for="guardname">Name of Guardian</label></td>
							<td><input type="text" name="guardname" id="guardname" value="<%=rs.getString("guard_name")%>" required></td>
						</tr>
						<tr>
							<td><label for="guardno">Phone</label></td>
							<td><input type="text" name="guardno" id="guardno" value="<%=rs.getString("guard_phone")%>" required></td>
						</tr>
						<tr>
							<td><label for="college">Name of School/College</label></td>
							<td><input type="text" id="college" name="college" value="<%=rs.getString("institute")%>"></td>
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
	                  ResultSet rs1=dq.viewRoom();
	                  while(rs1.next()){
									%>
											<option value="<%=rs1.getString("room_id")%>">  <%=rs1.getString("room_no")%> </option>
                  <%
                    }
                	%>
								</select>
							</td>
						</tr>
					</table>
					<input type="submit" value="Update" name="Submit">
				</div>
		<%
			}
		%>
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

    int i=db.editStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid,id);
    if(i>0){
%>
      <script>
	      alert("Successfully Updated Student Details");
	      window.location="studentView.jsp";
      </script>
<%
    }
  }
%>
