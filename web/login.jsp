
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbQuery"%>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Hostel Management</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
              <h3 style="color: green">
              Hostel Management
            </h3>
            <span>System</span>
          </a>

          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">


          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- login section -->

  <section class="login_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <h3>
              Hostel Management
            </h3>
            <p>
              Create your free account now and get immediate access to 100s of
              online courses
          </p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="login_form">
            <h5>
              Login Now
            </h5>
            <form action="">
              <div>
                  <input type="email" placeholder="Email " name="mail" />
              </div>
              <div>
                  <input type="password" placeholder="Password" name="passwd" />
              </div>
                <button type="submit" name="submit">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end login section -->

  <!-- info section -->
  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="info_course">
            <h5>
              TOP RATED COURSE
            </h5>
            <p>
              There are many variations of passages of Lorem Ipsum available,
              but the majority have suffered alteration in some form, by
              injected humou
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <p>
      &copy; 2021 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </footer>

  <footer class="container-fluid footer_section">

    <p>
      Distributed By
      <a href="https://themewagon.com/">Themewagon</a>
    </p>

</footer>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

<%@include file="Footer.jsp" %>

<%
    if(request.getParameter("submit")!=null)
    {
    String email=request.getParameter("mail");
    String passwd=request.getParameter("passwd");
    DbQuery db=new DbQuery();
    ResultSet rs=db.login(email,passwd);
    if(rs.next())
    {
        String usertype=rs.getString("user_type");
        session.setAttribute("utype", usertype);
        if(usertype.equalsIgnoreCase("admin"))
        {
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            response.sendRedirect("staffhome.jsp");
        }
    }
    else
    {
        %>
        <script>
            alert("invalid username or password");
        </script>
        <%
    }
    }
%>
