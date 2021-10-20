<%@include file="Header.jsp" %>
<div class="rrb">
  <h1>UPLOAD PHOTO</h1>
  <div style="min-height: 450px">
    <form id="form1" name="form1" method="post" enctype="multipart/form-data" action="studentfile.jsp">
      <%
        String stud_id=request.getParameter("id");
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
</div>
<%@include file="Footer.jsp" %>
