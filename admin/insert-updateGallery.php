<?php

if(count($_POST)>0){

include ('../config/dbconfig.php');
$id= $_POST['id'];
$judul_gambar = $_POST['judul_gambar'];
$gambar = $_FILES['gambar']['name'];
$gambar_loc = $_FILES['gambar']['tmp_name'];
$tanggal = date('Y-m-d');
$target_dir = "../Gallery/";
$ext = pathinfo($gambar, PATHINFO_EXTENSION);
move_uploaded_file($gambar_loc,$target_dir.$gambar);


if(empty($_POST["id"]))
{
    $sql = "INSERT INTO gallery (judul_gambar,tanggal,gambar) 
			VALUES('$judul_gambar','$tanggal','$gambar')";
    
}else{
    $sql = "UPDATE gallery SET id = '".$id."',judul_gambar='".$judul_gambar."',gambar='".$gambar."',tanggal='".$tanggal."' WHERE id = '".$id."'";
}

$result = mysqli_query($conn, $sql);

if($result){
    echo json_encode($result);
} else{
    echo    "err";
}



}
?>

