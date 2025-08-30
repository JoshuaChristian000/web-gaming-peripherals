<!DOCTYPE html>
<html lang="en">
<?php 
session_start();
include ('head/header.php');
include ('navbar/navbar.php');
include ('config/dbconfig.php');
?>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Keyboard Product</title>
</head>
<body>
    
<div class="container text-center rounded mt-5 pt-5 pb-5 text-light bg-dark">
        <h3>Keyboard Products</h3>
    </div>

<div class="card-deck">
<?php

$sql = "SELECT * FROM keyboard";			  
$result = mysqli_query($conn, $sql);
while($table = mysqli_fetch_assoc($result)){

?>

<div class="container-fluid mr-3 ml-3">
<div class="card mb-3 mt-3 w-100 border border-dark">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="./Pictures/<?php echo $table["gambar"]?>" class="img-fluid rounded col bg-dark"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title col bg-dark text-light rounded pb-3 pt-3"><?php echo $table["name"]?></h5>
        <p class="card-text font-weight-bold col">Deskripsi: <br> <?php echo $table["deskripsi"]?></p>
        <p class="card-text font-weight-bold col">Spesifikasi: <br> <?php echo $table["spec"]?></p>
        <p class="card-text font-weight-bold col">Price: <?php echo $table["price"]?></p>
      </div>
    </div>
  </div>
</div>
</div>


<?php
}
?>
</div>

</body>
</html>