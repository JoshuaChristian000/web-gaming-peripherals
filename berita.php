<?php
include ('head/header.php');
include ('config/dbconfig.php');
include ('navbar/navbar.php');

?>

<body>
  <title>Berita</title>
<div class="container">
<br>
<div class="text-center">
<h3>Berita</h3>
</div>
<br>

<div class="card-group">
<div class="row my-5">

<?php

$sql = "SELECT * FROM berita";			   
$result = mysqli_query($conn, $sql);
while($table = mysqli_fetch_assoc($result)){


?>
<div class="col-lg-4 py-3 ">
  <div class="card">
    <a href="berita_detail.php?id=<?php echo $table["id"]?>">
    <img class="card-img-top" src="./Pictures/<?php echo $table["gambar"]?>" alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title"><?php echo $table["judul"]?></h5>
      <p class="card-text"><?php echo $table["sinopsis"]?></p>
      <a href="berita_detail.php?id=<?php echo $table["id"]?>" type="button" class="btn btn-primary">Open</a>
    </div>
  </div>
  </div>  

<?php
}
?>
</div>

</div>
</div>

</body>
<?php 
include ('footer/footer.php');
?>