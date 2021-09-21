<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
<div>
	<h2>Staff Registration</h2>
	<form method="post">
		<table>
				<tr>
					<td><label for="staff_name">Staff Name</label></td>
					<td><input type="text" name="staff_name" id="staff_name" placeholder="Staff Name"></td>
				</tr>

				<tr>
					<td> <label for="gender">Gender</label>	</td>
					<td><input type="radio" name="gender" id="male" checked="checked" value="male">
						<label for="male">Male</label>

						<input type="radio" name="gender" id="female" value="female">
						<label for="female">Female</label>
					</td>
				</tr>

				<tr>
					<td><label for="age">AGE</label></td>
					<td><input type="number" id="age" name="age"></td>
				</tr>

				<tr>
					<td><label for="Hostel">Hostel</label></td>
					<td>
						<select id="hostel" name="hostel">
							<option value="-1">Select</option>
							<option value="Boys">Boys</option>
							<option value="Girls">Girls</option>
						</select>
					</td>
				</tr>

				<tr>
					<td><label for="salary">Salary</label></td>
					<td><input type="text" name="salary" id="salary"></td>
				</tr>

				<tr>
					<td><label for="address">Address</label></td>
					<td><textarea id="address" name="address" cols="20" rows="5"></textarea></td>
				</tr>

				<tr>
					<td><label for="designation">Designation</label></td>
					<td>
						<select id="designation" name="designation">
				                    <option value="-1">Select</option>
				                    <option value="Sweeper">Sweeper</option>
				                    <option value="Warden">Warden</option>
				                    <option value="Security">Security</option>
				                    <option value="Cook">Cook</option>
						</select>
					</td>
				</tr>

				<tr>
					<td><label for="phone">Phone</label></td>
					<td><input type="text" name="phone" id="phone"></td>
				</tr>

				<tr>
					<td><label for="email">Email</label></td>
					<td><input type="email" name="email" id="email" placeholder="Email"></td>
				</tr>

				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" name="password" id="password" placeholder="Password"></td>
				</tr>

			</table>
			<input type="submit" value="Submit" onclick="return valid_staff()" name="Submit">
	</form>
</div>
<%@include file="Footer.jsp" %>
<script type="text/javascript" src="js/javascript.js"></script>

<%
    if(request.getParameter("Submit")!=null)
    {
	    String staff_name=request.getParameter("staff_name");
	    String gender=request.getParameter("gender");
	    String age=request.getParameter("age");
	    String hostel=request.getParameter("hostel");
	    String salary=request.getParameter("salary");
	    String address=request.getParameter("address");
	    String designation=request.getParameter("designation");
	    String phone=request.getParameter("phone");
	    String email=request.getParameter("email");
	    String password=request.getParameter("password");

			DbQuery dq=new DbQuery();
			int i=dq.addStaff(staff_name, age, gender, hostel, salary, address, designation, phone, email,password);
			if(i>0){
			%>
			<script>
			    alert("Successfully registered");
			    window.location="adminhome.jsp";
			</script>
			<%
    	}
	}
%>
