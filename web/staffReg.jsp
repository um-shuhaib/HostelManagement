<%@page import="Dbcon.DbQuery"%>

<link rel="stylesheet" type="text/css" href="css/reg.css" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
	<form method="post">
            <div class="container">
        <div class="row">
                <h1 class="h1 input-container"><strong>STAFF REGISTRATION</strong></h1>
        </div>

        <div class="row input-container">
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="staff_name" name="staff_name" required />
                        <label>Staff Name</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="number" id="age" name="age" required />
                        <label>Age</label>
                    </div>
                </div>
                <div class=" col-sm-6 col-md-6 ">
                    <div class="">

                        <input type="radio" class="btn-check" name="gender" id="male" checked="checked" value="male" hidden />
                        <label class="btn btn-secondary" for="male">Male</label>
                    </div>
                </div>
                <br><br>
                <div class=" col-sm-6 col-md-6 ">
                    <div class="">
                        <input type="radio" class="btn-check" name="gender" id="female" value="female" hidden />
                        <label class="btn btn-secondary" for="female">Female</label>
                    </div>
                </div>

                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">
                        <textarea id="address" name="address" required></textarea>
                        <label>Address</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input wide">
                        <input type="number" id="salary" name="salary" required />
                        <label>Salary</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input wide" >
                        <input type="number" id="phone" name="phone" required />
                        <label>Phone Number</label>
                    </div>
                </div>

                <div class="col-md-6 col-sm-12">
                    <div class="styled-input wide">
                        <input type="email" id="email" name="email" required />
                        <label>Email</label>
                    </div>
                </div>
								<div class="col-md-6 col-sm-12">
                    <div class="styled-input wide">
                        <input type="password" id="password" name="password" required />
                        <label>Password</label>
                    </div>
                </div>

                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">

                        <select id="hostel" name="hostel" class="form-select bg-dark text-white input-container" aria-label="Default select example">
													<option value="-1">Select</option>
													<option value="Boys">Boys</option>
													<option value="Girls">Girls</option>
												</select>
                    </div>
                </div>



                <div class="col-xs-12 col-md-12">
                    <div class="styled-input wide">

                        <select id="designation" name="designation" class="form-select bg-dark text-white input-container" aria-label="Default select example">
                            <option value="-1">Select</option>
                            <option value="Sweeper">Sweeper</option>
                            <option value="Warden">Warden</option>
                            <option value="Security">Security</option>
                            <option value="Cook">Cook</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <input type="submit" name="submit" value="submit" class="btn-lrg submit-btn input-container" onclick="return valid_staff()">

                </div>
        </div>
    </div>
        </form>
</div>
<%@include file="Footer.jsp" %>
<script type="text/javascript" src="js/javascript.js"></script>

<%
    if(request.getParameter("submit")!=null)
    {
	    String staff_name=request.getParameter("staff_name");
            String age=request.getParameter("age");
	    String gender=request.getParameter("gender");
	    String hostel=request.getParameter("hostel");
	    String salary=request.getParameter("salary");
	    String address=request.getParameter("address");
	    String designation=request.getParameter("designation");
	    String phone=request.getParameter("phone");
	    String email=request.getParameter("email");
	    String password=request.getParameter("password");

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
