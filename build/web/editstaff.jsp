<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
	<style>
		.something {
			background-color: #F0F8FF ;
			margin: 20px 30% 30% 30% ;
			padding: 10px 40px 60px 20px ;
			align-items: center;
		}
		input,label {
			margin-top: 5px ;
			margin-left: 80px ;
			margin-bottom: 5px ; 
			padding-top: 10px ;
			padding-bottom: 8px;
		}
		h2{
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="something">
		<h2>Update Staff</h2>
	<form method="post" style="margin-top: 50px;">
            <% String id=request.getParameter("id");
               DbQuery db=new DbQuery();
               ResultSet rs=db.viewOneStaff(id);
               if(rs.next())
               {
            %>
		<label for="staff_name">Staff Name</label><br>
                <input type="text" name="staff_name" id="staff_name" placeholder="Staff Name" value="<%=rs.getString("staff_name")%>" required><br>

                <input style="margin-top : 10px" type="radio" name="gender" id="male" value="male" <% if(rs.getString("gender").equalsIgnoreCase("male")){%>checked="checked"<%}%>/>
		<label for="male" style="margin-left: 0px">Male</label><br>
                <input type="radio" name="gender" id="female" value="female" <% if(rs.getString("gender").equalsIgnoreCase("female")){%>checked="checked"<%}%> />
		<label for="female" style="margin-left: 0px">Female</label><br><br>

		<label for="age">AGE : </label>
                <input type="text" id="age" name="age" value="<%=rs.getString("age")%>" style="width: 40px; margin-left: 1px;">

		<div style="margin-top: 8px; margin-bottom: 8px">
		<label for="Hostel">Hostel</label>
    	<select id="hostel" name="hostel">
			<option value="Boys">Boys</option>
			<option value="Girls">Girls</option>

		</select><br>
		</div>

		<label for="salary">Salary</label><br>
                <input type="text" name="salary" id="salary" value="<%=rs.getString("salary")%>" required><br>

		<label for="address">Address</label><br>
                <input type="text" name="address" id="address" value="<%=rs.getString("address")%>" required><br><br>

		<label for="designation">Designation</label>
		<select id="designation" name="designation">
                    <option value="-1">Select</option>
                    <option value="Sweeper" <% if(rs.getString("designation").equalsIgnoreCase("Sweeper")){%>selected="selected"<%}%>>Sweeper</option>
                    <option value="Warden">Warden</option>
                    <option value="Security">Security</option>
                    <option value="Cook">Cook</option>
		</select><br><br>

		<label for="phone">Phone</label><br>
                <input type="text" name="phone" id="phone" value="<%=rs.getString("phone")%>" required><br>

		<label for="email">Email</label><br>
                <input type="email" name="email" id="email" placeholder="Email" value="<%=rs.getString("email")%>" required><br>

                <input type="submit" value="Update" name="Submit" style="margin-left: 250px;margin-top: 10%" >
                <%}%>
	
	</form>
	</div>

</body>
</html>
<%
    if(request.getParameter("Submit")!=null)
    {
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