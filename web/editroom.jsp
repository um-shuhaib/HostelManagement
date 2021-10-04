<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<link href="css/reg.css" rel="stylesheet" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
	<form	method="post">
    <%
		 	String id=request.getParameter("id");
			DbQuery db=new DbQuery();
			ResultSet rs=db.viewOneroom(id);
			if(rs.next()){
		%>
		<div class="container">
				<div class="row">
								<h1 class="h1 input-container"><strong>ROOM REGISTRATION</strong></h1>
				</div>

				<div class="row input-container">
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<input type="number" id="room" name="room" value="<%=rs.getString("room_no")%>" required />
												<label>Room Number</label>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<input type="number" id="beds" name="beds" value="<%=rs.getString("tot_beds")%>"required />
												<label>Total Beds</label>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<select id="hostel" name="hostel" class="form-select bg-dark text-white input-container" aria-label="Default select example">
														<option value="-1">Select</option>
							<option value="boys" <% if(rs.getString("hostel").equalsIgnoreCase("boys")){ %>
              selected="selected"
              <%}%>
              >Boys</option>
							<option value="girls" <% if(rs.getString("hostel").equalsIgnoreCase("girls")){ %>
              selected="selected"
              <%}%>
              >Girls</option>
						</select>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<select id="floor" name="floor" class="form-select bg-dark text-white input-container" aria-label="Default select example">
							<option value="-1">Select</option>
							<option value="0" <% if(rs.getString("flr").equalsIgnoreCase("0")){%>
              selected="selected"
              <%}%>
              >0</option>
							<option value="1" <%if(rs.getString("flr").equalsIgnoreCase("1")){%>
              selected="selected"
              <%}%>
              >1</option>
							<option value="2" <% if(rs.getString("flr").equalsIgnoreCase("2")){%>
              selected="selected"
              <%}%>
              >2</option>
							<option value="3" <% if(rs.getString("flr").equalsIgnoreCase("3")){%>
              selected="selected"
              <%}%>
              >3</option>
						</select>
										</div>
								</div>
								<div class="col-lg-12">
										<input type="submit" name="submit" value="Update" class="btn-lrg submit-btn" onclick="return valid_room()">
								</div>
				</div>
		</div>
		<% } %>
	</form>
</div>
<%@include file="Footer.jsp"%>
<script type="text/javascript" src="js/javascript.js"></script>
<%
if(request.getParameter("submit") != null){
	String room = request.getParameter("room");
	String bed = request.getParameter("beds");
	String floor = request.getParameter("floor");
	String hostel = request.getParameter("hostel");

	int i = db.editRoom(room, bed, floor, hostel, id) ;
	if(i > 0){
		%>
		<script>
			alert("Updated Successfully")
			window.location="roomView.jsp"
		</script>
		<%
	}
}
%>
