<?php

if(count($_POST)>0){

include ('../config/dbconfig.php');
$id= $_POST['id'];
$judul = $_POST['judul'];
$sinopsis = $_POST['sinopsis'];
$isi = $_POST['isi'];
$gambar = $_FILES['gambar']['name'];
$gambar_loc = $_FILES['gambar']['tmp_name'];
$tanggal = date('Y-m-d');
$target_dir = "../Pictures/";
$ext = pathinfo($gambar, PATHINFO_EXTENSION);
move_uploaded_file($gambar_loc,$target_dir.$gambar);

if(empty($id))
{
    $sql = "INSERT INTO berita (judul,sinopsis,isi,date,gambar) 
			VALUES('$judul','$sinopsis', '$isi','$tanggal','$gambar')";
    
}else{
    $sql = "UPDATE berita SET id = '".$id."',judul='".$judul."',sinopsis='".$sinopsis."',isi='".$isi."',gambar='".$gambar."' WHERE id = '".$id."'";
}

$result = mysqli_query($conn, $sql);

if($result){
    echo json_encode($result);
} else{
    echo    "err";
}



}
?>

