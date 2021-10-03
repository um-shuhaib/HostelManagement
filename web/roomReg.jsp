<%@page import="Dbcon.DbQuery"%>

<link href="css/reg.css" rel="stylesheet" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
		<div class="container">
				<div class="row">
								<h1 class="h1 input-container"><strong>ROOM REGISTRATION</strong></h1>
				</div>

				<div class="row input-container">
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<input type="text" id="room" name="roomNo" required />
												<label>Room Number</label>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<input type="text" id="beds" name="beds" required />
												<label>Total Beds</label>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<select id="hostel" name="hostel" class="form-select bg-dark text-white " aria-label="Default select example">
														<option value="-1">Select Hostel</option>
							<option value="boys">Boys</option>
							<option value="girls">Girls</option>
						</select>
										</div>
								</div>
								<div class="col-md-12 col-lg-6">
										<div class="styled-input wide">
												<select id="floor" name="floor" class="form-select bg-dark text-white " aria-label="Default select example">
							<option value="-1">Select Floor</option>
							<option value="0">Ground Floor</option>
							<option value="1">First Floor</option>
							<option value="2">Second Floor</option>
							<option value="3">Third Floor</option>
						</select>
										</div>
								</div>
								<div class="col-lg-12">
										<input type="submit" name="submit" value="submit" class="btn-lrg submit-btn">
								</div>
				</div>
		</div>
</div>
<%@include file="Footer.jsp"%>
<script type="text/javascript" src="js/javascript.js"></script>
<%
if(request.getParameter("submit") != null){
	String room = request.getParameter("roomNo");
	String bed = request.getParameter("bed");
	String floor = request.getParameter("floor");
	String hostel = request.getParameter("hostel");

	DbQuery dq = new DbQuery();
	int i = dq.addRoom(room, bed, floor, hostel) ;
	if(i > 0){
		%>
		<script>
			alert("Registered Successfully")
			window.location="staffhome.jsp"
		</script>
		<%
	}
}
%>
