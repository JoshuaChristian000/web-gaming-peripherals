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
    <title>Mouse Product</title>
</head>
<body>
    <div class="container text-center rounded mt-5 pt-5 pb-5 text-light bg-dark">
        <h3>Mouse Products</h3>
    </div>

<div class="card-group mr-5 ml-5">
<div class="row my-5">   

<?php

$sql = "SELECT * FROM mouse";			  
$result = mysqli_query($conn, $sql);
while($table = mysqli_fetch_assoc($result)){

?>

<div class="container col-sm-6">
    <div class="card text-center mb-4">
  <div class="card-header">
      <h4 class="card-title bg-dark rounded text-light pt-2 pb-2 font-weight-bold"><?php echo $table["name"]?></h4>
  <img class="card-img-top mb-2 mt-2" src="./Pictures/<?php echo $table["gambar"]?>" alt="Card image cap">
    <ul class="nav nav-pills card-header-pills">
    
    </ul>
  </div>
  <div class="card-body ">

      <p class="font-weight-bold">Deskripsi: <br> <?php echo $table["deskripsi"]?></p><br>
      <p class="font-weight-bold">Spesifikasi: <br> <?php echo $table["spec"]?></p>
      
    </div>
    <div class="card-footer bg-dark text-light">
    <p class="font-weight-bold mt-3">Price: <?php echo $table["price"]?></p>
    </div>
    </div>
</div>
    
<?php
}
?>
</div>

</div>


</body>
<?php 
include ('footer/footer.php');
?>
</html>