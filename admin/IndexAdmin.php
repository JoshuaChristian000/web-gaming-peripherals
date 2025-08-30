<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php 
        include ('../navbar/navbarAdmin.php');
        include ('../config/dbconfig.php');
        include ('../head/header.php');
        
        
    ?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
</head>
<body>

<div class="container mt-5">

<h1 class="text-center">Welcome</h1>


<a href="beritaAdmin.php" class="btn btn-primary btn-lg active col mt-2" role="button" aria-pressed="true">Berita</a>
<a href="galleryAdmin.php" class="btn btn-success btn-lg active col mt-2" role="button" aria-pressed="true">Gallery</a>
<a href="contactAdmin.php" class="btn btn-secondary btn-lg active col mt-2" role="button" aria-pressed="true">Contact Us</a>



</div>


</body>
</html>