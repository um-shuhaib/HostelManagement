<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
	<style>
		.something {
			border: 2px ;
			background-color: #F0F8FF ;
			margin: 10px 35% 30% 35% ;
			padding: 50px 40px 60px 80px ;
		}
		input {
			margin-top: 5px ; 
			margin-bottom: 5px ; 
			padding-top: 10px ;
			padding-bottom: 8px;
		}
		h1{
			text-align: center;
		}
	</style>
</head>
<body>
	<h1>Login</h1>
	<div class="something">
	<form method="post">
			<label for="mail">Email</label><br>
			<input type="email" name="mail" id="mail" placeholder="Email" required><br>
			
			<label for="passwd">Password</label><br>
			<input type="password" name="passwd" id="passwd" placeholder="Password" required><br>

			<input type="submit" name="submit" id="submit" value="Login" style="background-color: #50C878;color: white; padding: 2px 5px 2px 5px">		
	</form>
	</div>

</body>
</html>
<%
    if(request.getParameter("submit")!=null)
    {
    String email=request.getParameter("mail");
    String passwd=request.getParameter("passwd");
    DbQuery db=new DbQuery();
    ResultSet rs=db.login(email,passwd);
    if(rs.next())
    {
        String usertype=rs.getString("user_type");
        if(usertype.equalsIgnoreCase("admin"))
        {
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            response.sendRedirect("staffhome.jsp");
        }
    }
    else
    {
        %>
        <script>
            alert("invalid username or password");
        </script>
        <%
    }
    }
%>