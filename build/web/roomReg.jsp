<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
	<style>
		.something {
			background-color: #F0F8FF ;
			margin: 20px 35% 30% 35% ;
			padding: 20px 40px 60px 80px ;
		}
		input {
			margin-top: 5px ; 
			margin-bottom: 5px ; 
			padding-top: 10px ;
			padding-bottom: 8px;
		}
	</style>
</head>
<body>
	<div class="something">
		<h2>Room Registration</h2>
		<form method="post">
			<label for="room">Room No. : </label>
			<input type="text" name="roomNo" id="room"><br>

			<label for="beds">Total Beds : </label>
			<input type="text" name="beds" id="beds"><br>

			<div style="margin-top: 13px">
			<label for="floor">Floor : </label>
			<select id="floor" name="floor">
				<option value="-1">Select</option>
                                <option value="0">Ground Floor</option>
                                <option value="1">First Floor</option>
                                <option value="2">Second Floor</option>
                                <option value="3">Third Floor</option>
                                
			</select><br><br>
			</div>

			<label for="hostel">Hostel : </label>
			<select id="hostel" name="hostel">
				<option value="boys">Boys</option>
				<option value="girls">Girls</option>
			</select><br>

			<input type="submit" value="Submit" name="Submit" style="margin-left: 75px;margin-top: 10%">

		</form>
		
	</div>
</body>
</html>
<%
    DbQuery dq=new DbQuery();
    
    if(request.getParameter("Submit")!=null)
    {
    String Roomno=request.getParameter("roomNo");
    String Totalbeds=request.getParameter("beds");
    String Flr=request.getParameter("floor");
    String Hostel=request.getParameter("hostel");
    int i=dq.addRoom(Roomno, Totalbeds, Flr, Hostel);
    if(i>0){
    %>
    <script>
        alert("Successfully registered");
    </script>
    <%
    }
}
    
%>