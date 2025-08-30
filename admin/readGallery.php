<?php

include ('../config/dbconfig.php');
       
        
    $sql = "SELECT * FROM gallery";
    $result = $conn->query($sql);
    $num=1;
    while($row = mysqli_fetch_assoc($result)){
	echo "<tr>";
	echo "<td>".$num++."</td>";
    echo "<td>".$row['judul_gambar']."</td>";
    echo "<td> <img src='../Pictures/".$row['gambar']."' class='border-dark w-25 text-center'></td>";
    //echo "<td>".$row['link']."</td>";
    


	echo "<td>";
	echo '<button type="button" class="btn btn-warning btn-xs edit" id="'.$row["id"].'">Edit</button>';
    echo '<button type="button" class="btn btn-danger btn-xs delete" id="'.$row["id"].'" data-image_name="'.$row["gambar"].'">Delete</button></td>';
	echo "</td>";
	echo "</tr>";	
}
		
?>