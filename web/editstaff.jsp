<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
	<div>
		<h2>Update Staff</h2>
		<form method="post">
      <%
				String id=request.getParameter("id");
        DbQuery db=new DbQuery();
				ResultSet rs=db.viewOneStaff(id);
				if(rs.next()){
			%>
					<table>
						<tr>
							<td><label for="staff_name">Name</label></td>
							<td><input type="text" name="staff_name" id="staff_name" placeholder="Name" value="<%=rs.getString("staff_name")%>" required></td>
						</tr>
						<tr>
							<td> <label for="gender">Gender</label>	</td>
							<td>
								<input type="radio" name="gender" id="male" value="male"
									<% if(rs.getString("gender").equalsIgnoreCase("male")){ %>
									checked="checked" <%}%> /><label for="male">Male</label>
								<input type="radio" name="gender" id="female" value="female"
									<% if(rs.getString("gender").equalsIgnoreCase("female")){%>
									checked="checked"<%}%> /><label for="female"> Female </label>
							</td>
						</tr>
						<tr>
							<td><label for="age">AGE : </label></td>
							<td><input type="text" id="age" name="age" value="<%=rs.getString("age")%>"></td>
						</tr>
						<tr>
							<td><label for="Hostel">Hostel</label></td>
							<td>
								<select id="hostel" name="hostel">
									<option value="Boys">Boys</option>
									<option value="Girls">Girls</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="salary">Salary</label></td>
							<td><input type="text" name="salary" id="salary" value="<%=rs.getString("salary")%>" required></td>
						</tr>
						<tr>
							<td><label for="address">Address</label></td>
							<td>
								<textarea id="address" name="address" value="<%=rs.getString("address")%>" cols="20" rows="5" required></textarea>
								<%-- <input type="text" name="address" id="address" value="<%=rs.getString("address")%>" required> --%>
							</td>
						</tr>
						<tr>
							<td><label for="designation">Designation</label></td>
							<td>
								<select id="designation" name="designation">
				                    <option value="-1">Select</option>
				                    <option value="Sweeper" <% if(rs.getString("designation").equalsIgnoreCase("Sweeper")){%>
			                            selected="selected"
			                            <%}%>
			                            >Sweeper</option>
				                    <option value="Warden" <% if(rs.getString("designation").equalsIgnoreCase("Warden")){%>
			                            selected="selected"
			                            <%}%>
			                            >Warden</option>
				                    <option value="Security"<% if(rs.getString("designation").equalsIgnoreCase("Security")){%>
			                            selected="selected"
			                            <%}%>
			                            >Security</option>
				                    <option value="Cook"<% if(rs.getString("designation").equalsIgnoreCase("Cook")){%>
			                            selected="selected"
			                            <%}%>
			                            >Cook</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><label for="phone">Phone</label></td>
							<td><input type="text" name="phone" id="phone" value="<%=rs.getString("phone")%>" required></td>
						</tr>
						<tr>
							<td><label for="email">Email</label></td>
							<td><input type="email" name="email" id="email" placeholder="Email" value="<%=rs.getString("email")%>" required></td>
						</tr>
						<tr>
							<td></td>
						</tr>
					</table>
					<input type="submit" value="Update" name="Submit">
					<%
				}
					<%
		</form>
	</div>
<%@include file="Footer.jsp" %>

<%
  if(request.getParameter("Submit")!=null){
    String sname=request.getParameter("staff_name");
    String gender=request.getParameter("gender");
    String age=request.getParameter("age");
    String hostel=request.getParameter("hostel");
    String salary=request.getParameter("salary");
    String address=request.getParameter("address");
    String designation=request.getParameter("designation");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");

		int i=db.editStaff(sname, age, gender, hostel, salary, address, designation, phone, email, id);
		if(i>0){
%>
  		<script>
    		alert("Successfully registered");
    		window.location="staffView.jsp";
  		</script>
<%
		}
	}
%>
