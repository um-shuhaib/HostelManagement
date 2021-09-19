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

  <title>Joson</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
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
              <li class="nav-item active">
                  <a class="nav-link" href="staffhome.jsp"> Home </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="roomReg.jsp"> Add Room </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="studentReg.jsp"> Add Student </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="roomView.jsp"> View Room </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="studentView.jsp"> View Student </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.jsp"> Logout </a>
              </li>
            </ul>

          </div>
            <%
            }else{
%>

              <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
            <ul class="navbar-nav  ml-auto">
              <li class="nav-item active">
                  <a class="nav-link" href="adminhome.jsp"> Home </a>
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
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col">
                  <div class="detail-box">
                    <div>
                      <h1>
                        E D U C A T I O N
                      </h1>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container">
              <div class="row">
                <div class="col">
                  <div class="detail-box">
                    <div>
                      <h1>
                        E D U C A T I O N
                      </h1>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container">
              <div class="row">
                <div class="col">
                  <div class="detail-box">
                    <div>
                      <h1>
                        E D U C A T I O N
                      </h1>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- special section -->



  <!-- end special section -->

  <!-- about section -->
  <section class="about_section layout_padding">
    <div class="side_img">
      <img src="images/side-img.png" alt="" />
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="img_container">
            <div class="img-box b1">
              <img src="images/a-1.jpg" alt="" />
            </div>
            <div class="img-box b2">
              <img src="images/a-2.jpg" alt="" />
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h3>
                About Our College
              </h3>
              <p>
                It is a long established fact that a reader will be distracted
                by the readable content of a page when looking at its layout.
                The point of using Lorem Ipsum is that it has a more it
              </p>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- course section -->

  <section class="course_section layout_padding-bottom">
    <div class="side_img">
      <img src="images/side-img.png" alt="" />
    </div>
    <div class="container">
      <div class="heading_container">
        <h3>
          POPULAR COURSES
        </h3>
        <p>
          It is a long established fact that a reader will be distracted
        </p>
      </div>
      <div class="course_container">
        <div class="course_content">
          <div class="box">
            <img src="images/c-1.jpg" alt="" />
            <a href="" class="">
              <img src="images/link.png" alt="" />
            </a>
            <h5>
              LMS <br />
              Content
            </h5>
          </div>
          <div class="box">
            <img src="images/c-2.jpg" alt="" />
            <a href="" class="">
              <img src="images/link.png" alt="" />
            </a>
            <h5>
              From <br />
              Zero to Hero
            </h5>
          </div>
        </div>
        <div class="course_content">
          <div class="box">
            <img src="images/c-3.jpg" alt="" />
            <a href="" class="">
              <img src="images/link.png" alt="" />
            </a>
            <h5>
              Learn <br />
              Python ? Interactive
            </h5>
          </div>
          <div class="box">
            <img src="images/c-4.jpg" alt="" />
            <a href="" class="">
              <img src="images/link.png" alt="" />
            </a>
            <h5>
              Your <br />
              Complete Guide
            </h5>
          </div>
          <div class="box">
            <h3> Events </h3>
            <img src="images/c-5.jpg" alt="" />
            <a href="" class="">
              <img src="images/link.png" alt="" />
            </a>

          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- end course section -->

  <!-- login section -->


  <!-- end login section -->

  <!-- event section -->

  <!-- end event section -->

  <!-- client section -->


  <!-- end client section -->

  <!-- contact section -->



  <!-- end contact section -->

  <!-- info section -->


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

</body>

</html>
