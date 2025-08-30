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
    <title>Headset Product</title>
</head>
<body>
<div class="container text-center rounded mt-5 pt-5 pb-5 text-light bg-dark">
        <h3>Headset Products</h3>
</div>



   
<?php

$sql = "SELECT * FROM headset";			  
$result = mysqli_query($conn, $sql);
while($table = mysqli_fetch_assoc($result)){
?>

<div class="container-fluid w-50 mt-5 mb-5">
<div class="card mb-3 border border-dark">
<img class="card-img-top mb-2 mt-2" src="./Pictures/<?php echo $table["gambar"]?>" alt="Card image cap">
    <div class="card-body bg-dark text-light">
    <h4 class="card-title bg-dark rounded text-warning mb-1 mt-1 ml-1 mr-1 pt-2 pb-2 font-weight-bold"><?php echo $table["name"]?></h4>
    <p class="font-weight-bold">Deskripsi: <br> <?php echo $table["deskripsi"]?></p><br>
    <p class="font-weight-bold">Spesifikasi: <br> <?php echo $table["spec"]?></p>
    </div>
    <div class="card-footer">
    <p class="font-weight-bold mt-3">Price: <?php echo $table["price"]?></p>
    </div>
</div>
</div>




<?php
}
?>




</body>
<?php 
include ('footer/footer.php');
?>
</html>