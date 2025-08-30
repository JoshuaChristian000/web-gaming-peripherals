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
        
        $sql = "SELECT * FROM contactus";
        $result = $conn->query($sql);
    ?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Contact</title>
</head>

<body>
    <h3 class="mt-3 mb-3 text-center">Contact Us</h3>
<div class="container">
<table class="table" id="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nama</th>
      <th scope="col">Email</th>
      <th scope="col">Message</th>
      <th scope="col">Action</th>
 

    </tr>
  </thead>
  <tbody class="text-justify" id="tbody">
  <?php
    $num=1;
    while($row = mysqli_fetch_assoc($result)){
	echo "<tr>";
	echo "<td>".$num++."</td>";
	echo "<td>".$row['name']."</td>";
	echo "<td>".$row['email']."</td>";
	echo "<td>".$row['message']."</td>";
    echo "<td>";
    echo '<button type="button" class="btn btn-danger btn-xs delete" id="'.$row["id"].'"">Delete</button></td>';
	echo "</td>";
	echo "</tr>";	
}
		
?>
</tbody>
<script>
$(document).ready(function($) {
$('body').on('click', '.delete', function() {
            if (confirm("Delete Record?") == true) {
                var id = $(this).attr('id');
                // ajax
                $.ajax({
                    type: "POST",
                    url: "deleteContact.php",
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(res) {
                        $('#name').html(res.name);
                        $('#email').html(res.email);
                        $('#message').html(res.message);
                        window.location.reload();
                    }
                });
            }
        });

}); 
</script>
</div>
</body>