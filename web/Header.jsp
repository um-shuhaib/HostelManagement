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
            <span> System </span>
          </a>

            <%

            String utype=session.getAttribute("utype").toString();
            if(utype.equalsIgnoreCase("staff"))
            {
              String uri = request.getRequestURI();
              String pageName = uri.substring(uri.lastIndexOf("/")+1);
            %>

          <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item <%if(pageName.equalsIgnoreCase("staffhome.jsp")){ %>active<% } %>">
                <a class="nav-link" href="staffhome.jsp"> Home </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("roomReg.jsp")){ %>active<% } %>">
                <a class="nav-link" href="roomReg.jsp"> Add Room </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("studentReg.jsp")){ %>active<% } %>">
                <a class="nav-link" href="studentReg.jsp"> Add Student </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("roomView.jsp")){ %>active<% } %>">
                <a class="nav-link" href="roomView.jsp"> View Room </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("studentView.jsp")){ %>active<% } %>">
                <a class="nav-link" href="studentView.jsp"> View Student </a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="login.jsp"> Logout </a>
              </li>
            </ul>

          </div>
            <%
            }else{
              String uri = request.getRequestURI();
              String pageName = uri.substring(uri.lastIndexOf("/")+1);
            %>

              <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item <%if(pageName.equalsIgnoreCase("Home.jsp")){ %>active<% } %>">
                  <a class="nav-link" href="Home.jsp"> Home </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("staffReg.jsp")){ %>active<% } %>">
                  <a class="nav-link" href="staffReg.jsp"> Add Staff </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("staffView.jsp")){ %>active<% } %>">
                  <a class="nav-link" href="staffView.jsp"> View Staff </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("roomView.jsp")){ %>active<% } %>">
                  <a class="nav-link" href="roomView.jsp"> View Room </a>
              </li>

              <li class="nav-item <%if(pageName.equalsIgnoreCase("studentView.jsp")){ %>active<% } %>">
                  <a class="nav-link" href="studentView.jsp"> View Student</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="login.jsp"> Logout </a>
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
    <div  class="container" align="center">
