<?php
include ('dbconfig.php');
/* SQL query to get results from database */
$sql = "SELECT * FROM berita";
$result = $conn->query($sql);
/* If there are results from database push to result array */
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        array_push($result_array, $row);
    }
    //print_r($result);
}
/* send a JSON encded array to client */
header('Content-type: application/json');
echo json_encode($result_array);
$conn->close();


?>

