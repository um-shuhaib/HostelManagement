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
		<h2>Update Room</h2>
		<form method="post">
                    <%
                    String id=request.getParameter("id");
                    DbQuery db=new DbQuery();
                    ResultSet rs=db.viewOneroom(id);
                    if(rs.next())
                    {
                    %>
			<label for="room">Room No. : </label>
                        <input type="text" name="roomNo" id="room" value="<%=rs.getString("room_no")%>"><br>

			<label for="beds">Total Beds : </label>
                        <input type="text" name="beds" id="beds" value="<%=rs.getString("tot_beds")%>"><br>

			<div style="margin-top: 13px">
			<label for="floor">Floor : </label>
			<select id="floor" name="floor">
                            <%
                                String floor=rs.getString("flr");
                                
                            %>
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

			<input type="submit" value="Update" name="Submit" style="margin-left: 75px;margin-top: 10%">
                        <%}%>
		</form>
		
	</div>
</body>
</html>
<%
    if(request.getParameter("Submit")!=null)
    {
    String roomno=request.getParameter("roomNo");
    String totbeds=request.getParameter("beds");
    String flr=request.getParameter("floor");
    String hostel=request.getParameter("hostel");
    int i=db.editRoom(roomno, totbeds, flr, hostel, id);
    if(i>0){
    %>
    <script>
        alert("Successfully registered");
        window.location="roomView.jsp";
    </script>
    <%
    }
}
    
%>