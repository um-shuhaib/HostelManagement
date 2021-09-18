<%@include file="Header.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
</head>
<body>
<form method="post">
    <%
    String id=request.getParameter("id");
    DbQuery db=new DbQuery();
    ResultSet rs=db.viewOneStudent(id);
    if(rs.next())
    {
    %>

  <div>
	<h1>Update Student</h1>

	<label for="name">Name</label><br>
        <input type="text" name="name" id="name" value="<%=rs.getString("stud_name")%>" required><br>

        <label for="Age">AGE: </label>
        <input type="text" id="Age" name="Age" value="<%=rs.getString("age")%>">
	<br>

        <input type="radio" name="gender" id="male" value="male" <%if(rs.getString("gender").equalsIgnoreCase("male")){%>checked="checked"<%}%>>
        <label for="male">Male</label>
	<input type="radio" name="gender" id="female" value="female" <%if(rs.getString("gender").equalsIgnoreCase("female")){%>checked="checked"<%}%>>
        <label for="female">Female</label><br><br>

	<label for="address">Address</label><br>
        <input type="text" id="address" name="address" value="<%=rs.getString("address")%>"><br>

	<label for="fathname">Name of Father</label><br>
        <input type="text" name="fathname" id="fathname" value="<%=rs.getString("father_name")%>" required><br>

	<label for="fatherno">Phone</label><br>
        <input type="text" name="fatherno" id="fatherno" value="<%=rs.getString("fath_phone")%>" required><br>

	<label for="mothname">Name of Mother</label><br>
        <input type="text" name="mothname" id="mothname" value="<%=rs.getString("mother_name")%>" required><br>

	<label for="motherno">Phone</label><br>
        <input type="text" name="motherno" id="motherno" value="<%=rs.getString("moth_phone")%>" required><br>

	<label for="guardname">Name of Guardian</label><br>
        <input type="text" name="guardname" id="guardname" value="<%=rs.getString("guard_name")%>" required><br>

    <label for="guardno">Phone</label><br>
    <input type="text" name="guardno" id="guardno" value="<%=rs.getString("guard_phone")%>" required><br>

	<label for="college">Name of School/College</label><br>
        <input type="text" id="college" name="college" value="<%=rs.getString("institute")%>"><br>

	<label for="joindate">Join Date</label><br>
	<input type="date" id="joindate" name="joindate" value="2000-01-01"><br>

	<label for="roomno">Room No.</label>
	<select id="roomno" name="roomid">
				<option value="-1">Select</option>
                                <%
                                    DbQuery dq=new DbQuery();
                                    ResultSet rs1=dq.viewRoom();
                                    while(rs1.next())
                                    {
                                        %>
                                        <option value="<%=rs1.getString("room_id")%>">
                                            <%=rs1.getString("room_no")%>
                                        </option>
                                        <%
                                    }
                                %>
        </select><br>
	<input type="submit" value="Update" name="Submit">
  </div>
        <%}%>

</form>

</body>
</html>
<%
    if(request.getParameter("Submit")!=null)
    {
    String studname=request.getParameter("name");
    String age=request.getParameter("Age");
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
            alert("Successfully Updated Student Details");
            window.location="studentView.jsp";
        </script>
        <%
    }


    }


%>

<%@include file="Footer.jsp" %>
