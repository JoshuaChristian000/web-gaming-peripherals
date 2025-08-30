<?php
include ('../config/dbconfig.php');

$id = $_POST['id'];
$sql = "SELECT * FROM berita WHERE id='".$id."'";
$result = $conn->query($sql);

$data = mysqli_fetch_array($result);

if($data){
    echo json_encode($data);
}else{
    echo "err";
}





?>