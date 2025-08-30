<?php
include ('../config/dbconfig.php');

$id = $_POST['id'];
$sql = "DELETE FROM berita WHERE id='".$id."'";
$res = mysqli_query($conn, $sql);
if($res) {
echo json_encode($res);
} else {
echo "Error: " . $sql . "" . mysqli_error($conn);
}
?>