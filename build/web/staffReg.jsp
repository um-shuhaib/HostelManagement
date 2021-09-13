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
		<h2>Staff Registration</h2>
	<form method="post" style="margin-top: 50px;">
		<label for="staff_name">Staff Name</label><br>
		<input type="text" name="staff_name" id="staff_name" placeholder="Staff Name" required><br>

		<input style="margin-top : 10px" type="radio" name="gender" id="male" value="male">
		<label for="male" style="margin-left: 0px">Male</label><br>
		<input type="radio" name="gender" id="female" value="female">
		<label for="female" style="margin-left: 0px">Female</label><br><br>

		<label for="age">AGE : </label>
		<input type="text" id="age" name="age" style="width: 40px; margin-left: 1px;">

		<div style="margin-top: 8px; margin-bottom: 8px">
		<label for="Hostel">Hostel</label>
    	<select id="hostel" name="hostel">
			<option value="Boys">Boys</option>
			<option value="Girls">Girls</option>

		</select><br>
		</div>

		<label for="salary">Salary</label><br>
		<input type="text" name="salary" id="salary" required><br>

		<label for="address">Address</label><br>
		<input type="text" name="address" id="address" required><br><br>

		<label for="designation">Designation</label>
		<select id="designation" name="designation">
                    <option value="-1">Select</option>
                    <option value="Sweeper">Sweeper</option>
                    <option value="Warden">Warden</option>
                    <option value="Security">Security</option>
                    <option value="Cook">Cook</option>
		</select><br><br>

		<label for="phone">Phone</label><br>
		<input type="text" name="phone" id="phone" required><br>

		<label for="email">Email</label><br>
		<input type="email" name="email" id="email" placeholder="Email" required><br>

		<label for="password">Password</label><br>
		<input type="password" name="password" id="password" placeholder="Password" required><br>

                <input type="submit" value="Submit" name="Submit" style="margin-left: 250px;margin-top: 10%" >
	
	</form>
	</div>

</body>
</html>
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
//    
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