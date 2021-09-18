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
            <h3>
              Joson
            </h3>
            <span> college</span>
          </a>

            <%

            String utype=session.getAttribute("utype").toString();
            if(utype.equalsIgnoreCase("staff"))
            {

            %>

          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item ">
                  <a class="nav-link" href="staffhome.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href=""> Add Room</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="course.html"> Add Student</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="event.html"> View Room </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.html"> View Student</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.html">Logout</a>
              </li>
            </ul>

          </div>
            <%
            }else{
%>

              <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item active">
                  <a class="nav-link" href="Home.jsp">Home </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="staffReg.jsp"> Add Staff </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="staffView.jsp"> View Staff </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="roomView.jsp"> View Room </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="studentView.jsp"> View Student</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Logout</a>
              </li>
            </ul>

          </div>

            <%
}

            %>



        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- event section -->
  <section class="event_section layout_padding">
    <div class="container" align="center">
