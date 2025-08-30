<?php
include '../config/dbconfig.php';
include ('../head/header.php');

$email = $_POST['email'];
$password = $_POST['password'];
$hashedPassword = md5($password);

$sql = "INSERT INTO admin (email, password) VALUES('$email','$hashedPassword')";

$result = mysqli_query($conn,$sql);

if($result){
    $email = $_SESSION['email'] ; 
    
}



header('location: ../loginAdmin.php?status=success');
?>
