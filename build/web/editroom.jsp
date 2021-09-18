<%@include file="Header.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
</head>
<body>
	<div>
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

			<div>
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

			<input type="submit" value="Update" name="Submit">
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
<%@include file="Footer.jsp" %>
