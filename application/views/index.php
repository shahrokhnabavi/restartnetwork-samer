<?php

?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Samer Abdelnour</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="css/business-frontpage.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="gallery.html">Gallery</a>
            </li>
            <li class="nav-item">
            <a class="logo" href="#"><img id="logo-navbar-middle" src="img/logo-thing.png" width="100" alt="Logo Thing main logo"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header with Background Image -->



<!--Video Section-->
       <div class ="section">
          <div class="header-unit">
<div id="video-container">
<video autoplay loop muted class="fillWidth">
<source src="img/vid.mp4" type="video/mp4">
     <source src="img/vid.webm" type="video/webm">
<source src="vid/bg.ogg" type="video/ogg"/>
</video>
</div><!-- end container -->
</div><!-- end .header-unit -->

        </section>

    <!-- Page Content -->
    <!-- Subscription -->
<p><?php
if( $this->input->post('sub', TRUE)) {
  echo validation_errors() . '</p><p>';
}

$temp = $this->session->flashdata('successMsg');
if( $temp ){
  echo $temp;
}
?></p>
      <div class="container-fluid">
        <div class="col-sm-2 my-12">
           <div class="card-body1">
              <p class="card-title">Subscribe</p>
              <form action="<?php echo base_url('subsription'); ?>" method="POST">
              <input class="subfield" type="text" name="sub" placeholder="Enter Your E-Email" value="<?= set_value('email'); ?>">
              <input class="btn btn-primary btn-sm" type="submit" value="Register">
              </form>
            </div>
          </div>
          </div>
    <!--/ Subscription -->
    <!-- Welcome Note -->
    <div class="container">
     <div class="row">
      <div class="col-sm-12 first_row">
        <hr class="style">
        Welcome to Samer Abdelnouer cultural website.<br>
        Here some info text...<br>
        Here some info text...<br>
        <hr class="style"><br><br>
      </div>
    <!--/. Welcome Note -->

     </div>
    <!-- /.row -->
      

      <div class="row">
        <div class="col-sm-12 my-12">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Event Title</h4>
              <p class="card-text">Sheril work here for event posts</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary btn-sm">Find Out More!</a>
            </div>
          </div>
        </div>
      </div>
      </div> <!-- CONTAINER -->

      <!-- /.row -->
    <!-- Footer -->
    <div class="footer">
    	<div class="container">
    		<p class="m-0 text-center text-white">Copyright &copy; Triple S.S.S</p>
    	</div>
    </div>
    <!-- /. Footer -->


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/bootstrap/js/video.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>

  </body>

</html>
