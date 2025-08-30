<?php
include '../config/dbconfig.php';

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM admin WHERE email='$email' AND password=md5('$password')";

$result = mysqli_query($conn,$sql);

if($result){
    session_start();
    $email = $_SESSION['email'] ; 
}

header('location: ../admin/indexAdmin.php');

?>