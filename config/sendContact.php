<?php

//print_r($_POST);
include ('dbconfig.php');

	
    $hasil = array();
	$name = $_POST['name'];
	$email = $_POST['email'];
	$message = $_POST['message'];

    $sql = "INSERT INTO contactus (name, email, message) 
			VALUES('$name', '$email', '$message')";

    $result = mysqli_query($conn, $sql);

	if($result){
		$hasil['status'] = true;
		$hasil['msg'] = "Success.";
	} else{
		$hasil['status'] = false;
		$hasil['msg'] = mysqli_error($conn);
	}
    echo json_encode($hasil);

?>