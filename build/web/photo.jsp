<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Management</title>
    <style>
        .main{

            background-color: aqua;
            height: 300px;
            width: 100%;
            padding-left: 40%;
            padding-top: 38px
        }
        .h1{
            padding-left: 648px
        }

    </style>
</head>
<body>
    <div class="h1" >
    <h1>UPLOAD PHOTO</h1>
    </div>
    <div class="main">

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
--
