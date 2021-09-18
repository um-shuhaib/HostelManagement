<%@include file="Header.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title></head>
<body>
<form method="post">
  <div>
	<h1>Student Registration</h1>

	<label for="name">Name</label><br>
	<input type="text" name="name" id="name" required><br>

        <label for="Age">AGE: </label>
	<input type="text" id="Age" name="Age">
	<br>

	<input type="radio" name="gender" id="male" value="male">
        <label for="male">Male</label>
	<input type="radio" name="gender" id="female" value="female">
        <label for="female">Female</label><br><br>

	<label for="address">Address</label><br>
    <input type="text" id="address" name="address"><br>

	<label for="fathname">Name of Father</label><br>
    <input type="text" name="fathname" id="fathname" required><br>

	<label for="fatherno">Phone</label><br>
    <input type="text" name="fatherno" id="fatherno" required><br>

	<label for="mothname">Name of Mother</label><br>
    <input type="text" name="mothname" id="mothname" required><br>

	<label for="motherno">Phone</label><br>
    <input type="text" name="motherno" id="motherno" required><br>

	<label for="guardname">Name of Guardian</label><br>
    <input type="text" name="guardname" id="guardname" required><br>

    <label for="guardno">Phone</label><br>
    <input type="text" name="guardno" id="guardno" required><br>

	<label for="college">Name of School/College</label><br>
	<input type="text" id="college" name="college"><br>

	<label for="joindate">Join Date</label><br>
	<input type="date" id="joindate" name="joindate" value="2000-01-01"><br>

	<label for="roomno">Room No.</label>
	<select id="roomno" name="roomid">
				<option value="-1">Select</option>
                                <%
                                    DbQuery dq=new DbQuery();
                                    ResultSet rs=dq.viewRoom();
                                    while(rs.next())
                                    {
                                        %>
                                        <option value="<%=rs.getString("room_id")%>">
                                        	<%=rs.getString("room_no")%>
                                        </option>
                                        <%
                                    }
                                %>
        </select><br>
	<input type="submit" value="Submit" name="Submit">
  </div>

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

    int i=dq.addStudent(studname, age, gender, address, fathname, fathphone, mothname, mothphone, guardname, guardphone, institute, joindate, roomid);
    if(i>0){
        %>
        <script>
            alert("Successfully registered");
        </script>
        <%
    }
    }
%>

<%@include file="Footer.jsp" %>
