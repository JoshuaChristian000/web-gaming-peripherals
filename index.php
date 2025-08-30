<!DOCTYPE html>
<html lang="en">
<?php 
session_start();
include ('head/header.php');
include ('navbar/navbar.php');
include ('css/indexcss.php');


?>
<body>
<title>Home Page</title>
<div class="container-fluid bg-dark pt-5 pb-5">
<div class="container mt-5 mb-5">
<!-- carousel -->
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Pictures/logi-wp.jpg" style="width:100%">
  <!-- <div class="text">Caption Text</div> -->
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Pictures/logi-wp2.jpg" style="width:100%">
  <!-- <div class="text">Caption Two</div> -->
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Pictures/logi-wp4.jpg" style="width:100%">
  <!-- <div class="text">Caption Three</div> -->
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</div>

</div>

<div class="container mb-3">
<h3 class="text-center mb-3 mt-3 pb-3 pt-3 bg-primary rounded">Products</h3>
<div class="card-deck  text-center">
  <div class="card ">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/g413-mechanical-gaming-keyboard.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Keyboard <br> Products</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="keyboard.php" class="btn btn-primary">Open</a>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/g102-prodigy.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Mouse <br> Products</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="mouse.php" class="btn btn-primary">Open</a>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/g733_2.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Headset <br> Products</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="headset.php" class="btn btn-primary">Open</a>
    </div>
  </div>
</div>

</div>

<div class="container mb-3">
<h3 class="text-center text-white mb-3 mt-3 pb-3 pt-3 bg-secondary rounded">Others</h3>
<div class="card-deck  text-center">
  <div class="card ">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/logi-wp.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Gallery</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="gallery.php" class="btn btn-primary">Open</a>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/Logitech_PopKeys_dan_PopMouse.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Berita</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="Berita.php" class="btn btn-primary">Open</a>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top pt-3 pb-3 bg-dark" src="./Pictures/Contact-Us.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title mt-3 mb-3">Contact Us</h5>
      <p class="card-text"></p>
    </div>
    <div class="card-footer">
      <a href="contactus.php" class="btn btn-primary">Open</a>
    </div>
  </div>
</div>
</div>


<script  src="js/index.js" type="text/javascript"></script>
</body>

<?php 
include ('footer/footer.php');
?>
</html>