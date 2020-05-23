<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Side Menu Bar</title>
    <link rel="stylesheet" href="style.css">
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"> -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
      $(document).ready(function(){
        $('i').click(function(){
          $('ul').toggleClass('ul_show');
          $('section').toggleClass('slide_image');
        });
        $('li').click(function(){
          $(this).addClass('active').siblings().removeClass('active');
        });
      });

    </script>

  </head>
  <?php include("header.php");?>
  <body style="background-color: #B3F5E8">



    <div class="container-fluid" style="background-color: #B3F5E8">
    <div class="row" id="wrapper">
    <?php require_once'menubar1.php';?>
        <div class="col-sm-12">
        <div class="panel panel-default">
        <div class="panel-body">
        <center>
        <h1 style="color:#0B3861; font-family:Impact;">National Institute of Technology, Andhra Pradesh</h1>
       
        <img class="img-circle" height="150" width="175" alt="Image Preview" src="pics/NIT Andhra.png" />
         <h3 style="color:#0B615E; font-family:Elephant;">Departments</h3>
        </center>
        </div>
    </div>
        
    </div>

    <div class="panel panel-default">
        <div class="panel-body">
        <center>
        <h1 style="color:#0B3861; font-family:Impact;">Department Management System</h1>
        
        </center>
        </div>
    </div>
        
    </div>


</div>
  
    
<section>
      <i class="fas fa-bars"></i>
      <div class="sec1">
</div>
<h1 id="about"></h1>

<div class="sec2">
</div>
<h1 id="portfolio"></h1>

<div class="sec3">
</div>
<h1 id="gallery"></h1>

<div class="sec4">
</div>
<h1 id="services"></h1>

<div class="sec5">
</div>
<h1 id="feedback"></h1>

</div>
<h1 id="contact"></h1>

<div class="sec7">
</div>
</section>

  </body>
</html>
