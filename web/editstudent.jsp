<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<link rel="stylesheet" type="text/css" href="css/reg.css" />
<%@include file="Header.jsp" %>
<div class="body" align="center">
        <form method="post">
          <%
      	    String id=request.getParameter("id");
      	    DbQuery db=new DbQuery();
      	    ResultSet rs=db.viewOneStudent(id);
      	    if(rs.next()){
          %>
        <div class="container">
          <div class="row">
               <h1 class="h1 input-container"><strong>UPDATE STUDENT</strong></h1>
          </div>
          <div class="row input-container">
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="name" name="name" value="<%=rs.getString("stud_name")%>" required />
                        <label>Name</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="age" name="age" value="<%=rs.getString("age")%>" required />
                        <label>Age</label>
                    </div>
                </div>

                <div class=" col-sm-6 col-md-6 ">
                    <div class="">

                        <input type="radio" class="btn-check" name="gender" id="male" value="male" hidden <%if(rs.getString("gender").equalsIgnoreCase("male")){%>
      									checked="checked" <%}%>
      				        	/>
                        <label class="btn btn-secondary" for="male">Male</label>
                    </div>
                </div>
                <br><br>
                <div class=" col-sm-6 col-md-6 ">
                    <div class="">
                        <input type="radio" class="btn-check" name="gender" id="female" value="female" hidden <%if(rs.getString("gender").equalsIgnoreCase("female")){%>
      									checked="checked" <%}%>
      				        	/>
                        <label class="btn btn-secondary" for="female">Female</label>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="styled-input wide">
                        <textarea id="address" name="address" required><%=rs.getString("address")%></textarea>
                        <label>Address</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="fathname" name="fathname" required value="<%=rs.getString("father_name")%>" />
                        <label>Name of Father</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="fatherno" name="fatherno" required value="<%=rs.getString("fath_phone")%>" />
                        <label>Phone Number</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="mothname" name="mothname" required value="<%=rs.getString("mother_name")%>" />
                        <label>Name of Mother</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="motherno" name="motherno" required value="<%=rs.getString("moth_phone")%>" />
                        <label>Phone Number</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input">
                        <input type="text" id="guardname" name="guardname" required value="<%=rs.getString("guard_name")%>" />
                        <label>Name of Guardian</label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="styled-input" style="float:right;">
                        <input type="text" id="guardno" name="guardno" required value="<%=rs.getString("guard_phone")%>" />
                        <label>Phone Number</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">
                        <input type="text" id="college" name="college" required value="<%=rs.getString("institute")%>" />
                        <label>Name of School/College</label>
                    </div>
                </div>
                <div class=" col-md-12">
                    <div class=" styled-input wide" >
                        <input type="date" id="joindate" name="joindate"  value="<%=rs.getString("join_date")%>" />
                        <label for="joindate">Join Date</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="styled-input wide">


                          <select id="roomid" name="roomid" class="form-select bg-dark text-white input-container" aria-label="Default select example">
                            <option value="-1" selected>Select</option>
                            <%
																String room__id = rs.getString("room_id");
                                ResultSet rs1=db.viewRoom();
                                while(rs1.next())
                                {
                                    %>
                                    <option value="<%=rs1.getString("room_id")%>"
																		<% if(rs1.getString("room_id").equalsIgnoreCase(room__id)){%>
					                                selected="selected"
					                                <%}%>
																					>
                                    <%=rs1.getString("room_no")%>
                                    </option>
                                    <%
                                }
                            %>
                          </select>
                    </div>
                </div>
                <div class="col-md-12">
                    <input type="submit" name="submit" value="Update" class="btn-lrg submit-btn input-container" onclick="return valid_student()">

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
    String studname=request.getParameter("name");
    String age=request.getParameter("age");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String fathname=request.getParameter("fathname");
    String fathphone=request.getParameter("fatherno");
    String mothname=request.getParameter("mothname");
    String mothphone=request.getParameter("motherno");
    String guardname=request.getParameter("guardname");
    String guardphone=request.getParameter("guardno");
    String institute=request.getParameter("college");
    String joindate=request.getParameter("joindate");
    String roomid=request.getParameter("roomid");

    int i=db.editStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid,id);
    if(i>0){
      %>
      <script>
          alert("Successfully Updated")
          window.location="studentView.jsp"
      </script>
      <%
    }
  }
%>
