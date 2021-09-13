<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hostel-Management</title>
	<style>
		.container{
			width: 60%;
			margin-right: 20%;
			margin-left:20%;
			background-color: #F0F8FF;
			padding-top: 10px;
			padding-bottom: 10px;
		}
		table,td,th{
			border-collapse: collapse;
			border: 2px solid black ;
		}
		.slt-hostel{
			width : 100% ; 
			text-align: center;
		}
		#edit, #delete{
			text-decoration: none;
			padding-left: 5px;
			font-weight: bold;
			color: blue
		}
		h2{
			text-align: center;
			text-decoration: underline
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Room View</h2>
		<form method="post">
		<div  class="slt-hostel">
			<label for="selectHostel">Select Hostel : </label>
                        <select id="selectHostel" name="selected_hostel">
                            <option value="boys">Boys</option>
                            <option value="girls">Girls</option>
			</select><br><br>
                        <input type="submit" value="Submit" name="selectHostel" /><br><br>
                        
                    <%
                        DbQuery db=new DbQuery();
                        if(request.getParameter("selectHostel")!=null){
                            String hostel=request.getParameter("selected_hostel");                            
                            ResultSet rs=db.viewRoom(hostel);
                            if(rs.next()){
                    %>

		</div>
		<div>
			<table style="width: 98%;margin: 0 1% 0 1%;">
				<thead>
                                    <tr>
					<th>SI NO.</th>
					<th>Room NO.</th>
					<th>Total Beds</th>
					<th>Floor</th>
					<th>Hostel</th>
					<th style="width: 15% ;">Edit</th>
                                    </tr>
                                </thead>
                                <%
                                    int i=1;
                                    do{
                                %>
				<tr>
					<td><%=i%></td>
					<td><%=rs.getString("room_no")%></td>
					<td><%=rs.getString("tot_beds")%></td>
					<td><%=rs.getString("flr")%></td>
					<td><%=rs.getString("hostel")%></td>
					<td>
                                            <a href="editroom.jsp?id=<%=rs.getString("room_id")%>" >edit</a>
                                        <a href="deleteroom.jsp?id=<%=rs.getString("room_id")%>">delete</a>
					</td>
				</tr>
                                <%
                                    i++;
                                    }while(rs.next());
                                %>
			</table>
                        <%
                            }
                    else
                    {
                    %>
                    <h2 style="text-align:center">NO DATA</h2>
                    <%
                    }}
                    %>
		</div>
		</form>
	</div>
</body>
</html>