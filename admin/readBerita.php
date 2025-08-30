<?php

include ('../config/dbconfig.php');


$sql = "SELECT * FROM berita";
$result = $conn->query($sql);

    $num=1;
    while($row = mysqli_fetch_assoc($result)){
	echo "<tr>";
	echo "<td>".$num++."</td>";
	echo "<td>".$row['judul']."</td>";
	echo "<td>".$row['sinopsis']."</td>";
	echo "<td>".$row['isi']."</td>";
    echo "<td> <img src='../Pictures/".$row['gambar']."' class='rounded border-dark w-100 mw-100 h-100 mh-100'></td>";
    
	echo "<td>";
	echo '<button type="button" class="btn btn-warning btn-xs edit" id="'.$row["id"].'">Edit</button>';
    echo '<button type="button" class="btn btn-danger btn-xs delete" id="'.$row["id"].'" data-image_name="'.$row["gambar"].'">Delete</button></td>';
	echo "</td>";
	echo "</tr>";	
}

?>