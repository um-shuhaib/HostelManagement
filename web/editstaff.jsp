<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<link rel="stylesheet" type="text/css" href="css/reg.css" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
	<form method="post">
    <%
      String id=request.getParameter("id");
      DbQuery db=new DbQuery();
      ResultSet rs=db.viewOneStaff(id);
      if(rs.next()){
    %>
            <div class="container">
        <div class="row">
                <h1 class="h1 input-container"><strong>STAFF REGISTRATION</strong></h1>
        </div>

        <div class="row input-container">
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="staff_name" name="staff_name" value="<%=rs.getString("staff_name")%>" required />
                        <label>Staff Name</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="number" id="age" name="age" value="<%=rs.getString("age")%>" required />
                        <label>Age</label>
                    </div>
                </div>
                <div class=" col-sm-6 col-md-6 ">
                    <div class="">

                        <input type="radio" class="btn-check" name="gender" id="male" value="male" hidden 	<% if(rs.getString("gender").equalsIgnoreCase("male")){ %>
        									checked="checked" <%}%> />
                        <label class="btn btn-secondary" for="male">Male</label>
                    </div>
                </div>
                <br><br>
                <div class=" col-sm-6 col-md-6 ">
                    <div class="">
                        <input type="radio" class="btn-check" name="gender" id="female" value="female" hidden 	<% if(rs.getString("gender").equalsIgnoreCase("female")){ %>
        									checked="checked" <%}%> />
                        <label class="btn btn-secondary" for="female">Female</label>
                    </div>
                </div>

                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">
                        <textarea id="address" name="address" required><%=rs.getString("address")%></textarea>
                        <label>Address</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input wide">
                        <input type="number" id="salary" name="salary" value="<%=rs.getString("salary")%>" required />
                        <label>Salary</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input wide" >
                        <input type="number" id="phone" name="phone" value="<%=rs.getString("phone")%>" required />
                        <label>Phone Number</label>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12">
                    <div class="styled-input wide">
                        <input type="email" id="email" name="email" value="<%=rs.getString("email")%>" required />
                        <label>Email</label>
                    </div>
                </div>

                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">

                        <select id="hostel" name="hostel" class="form-select bg-dark text-white input-container" aria-label="Default select example">
													<option value="-1">Select</option>
                          <option value="Boys" <% if(rs.getString("hostel").equalsIgnoreCase("Boys")){%>
														selected="selected"
	                          <%}%>
	                          >Boys</option>
													<option value="Girls" <% if(rs.getString("hostel").equalsIgnoreCase("Girls")){%>
														selected="selected"
	                          <%}%>
	                          >Girls</option>
												</select>
                    </div>
                </div>



                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">

                        <select id="designation" name="designation" class="form-select bg-dark text-white input-container" aria-label="Default select example">
                          <option value="-1">Select</option>
                          <option value="Sweeper" <% if(rs.getString("designation").equalsIgnoreCase("Sweeper")){%>
                                selected="selected"
                                <%}%>
                                >Sweeper</option>
                          <option value="Warden" <% if(rs.getString("designation").equalsIgnoreCase("Warden")){%>
                                selected="selected"
                                <%}%>
                                >Warden</option>
                          <option value="Security"<% if(rs.getString("designation").equalsIgnoreCase("Security")){%>
                                selected="selected"
                                <%}%>
                                >Security</option>
                          <option value="Cook"<% if(rs.getString("designation").equalsIgnoreCase("Cook")){%>
                                selected="selected"
                                <%}%>
                                >Cook</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <input type="submit" name="submit" value="Update" class="btn-lrg submit-btn input-container" onclick="return valid_edit_staff()">

                </div>
        </div>
    </div>
		<% } %>
	</form>
</div>
<%@include file="Footer.jsp" %>
<script type="text/javascript" src="js/javascript.js"></script>

<%
    if(request.getParameter("submit")!=null){
	    String staff_name=request.getParameter("staff_name");
      String age=request.getParameter("age");
	    String gender=request.getParameter("gender");
	    String hostel=request.getParameter("hostel");
	    String salary=request.getParameter("salary");
	    String address=request.getParameter("address");
	    String designation=request.getParameter("designation");
	    String phone=request.getParameter("phone");
	    String email=request.getParameter("email");

			DbQuery dq=new DbQuery();
			int i=dq.editStaff(staff_name, age, gender, hostel, salary, address, designation, phone, email, id);
			if(i>0){
			%>
			<script>
			    alert("Successfully Updated");
			    window.location="staffView.jsp";
			</script>
			<%
    	}
	}
%>
