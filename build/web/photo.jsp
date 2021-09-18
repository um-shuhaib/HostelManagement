<%@include file="Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Management</title>
</head>
<body>
    <div>
    <h1>UPLOAD PHOTO</h1>
    </div>
    <div>

        <form id="form1" name="form1" method="post" enctype="multipart/form-data" action="studentfile.jsp">
            <%
            String stud_id=request.getParameter("student_id");
            String stud_name=request.getParameter("name");
            %>
            <table >
                <tr>
                    <td>STUDENT NAME</td>
                    <td><input type="text" readonly="readonly" value="<%=stud_name%>" name="sname" id="sname"></td>
                     <td><input type="hidden" value="<%=stud_id%>" name="photo_id" id="photo_id"></td>
                </tr>

                <tr>
                    <td>UPLOAD PHOTO</td>
                    <td><input type="file" name="photo" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" id="submit" value="submit"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

<%@include file="Footer.jsp" %>
