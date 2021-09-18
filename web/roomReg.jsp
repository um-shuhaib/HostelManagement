<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<%@include file="Header.jsp" %>
	<div>
		<h2>Room Registration</h2>
		<form method="post">
			<table>
				<tr>
					<td><label for="room">Room No.</label></td>
					<td><input type="text" name="roomNo" id="room"></td>
				</tr>
				<tr>
					<td><label for="beds">Total Beds</label></td>
					<td><input type="text" name="beds" id="beds"></td>
				</tr>
				<tr>
					<td><label for="floor">Floor : </label></td>
					<td>
						<select id="floor" name="floor">
							<option value="-1">Select</option>
							<option value="0">Ground Floor</option>
							<option value="1">First Floor</option>
							<option value="2">Second Floor</option>
							<option value="3">Third Floor</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><label for="hostel">Hostel</label></td>
					<td>
						<select id="hostel" name="hostel">
							<option value="boys">Boys</option>
							<option value="girls">Girls</option>
						</select>
					</td>
				</tr>
			</table>
			<input type="submit" value="Submit" name="Submit">
		</form>
	</div>
	<%@include file="Footer.jsp" %>

<%
  DbQuery dq=new DbQuery();
  if(request.getParameter("Submit")!=null){
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
