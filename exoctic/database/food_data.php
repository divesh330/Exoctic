<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'exoctic');
 

$connection = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);


if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}


$query = "SELECT id,name, pic FROM product WHERE type ='food'";


$result = $connection->query($query);

if (!$result) {
    die('Error fetching food data: ' . $connection->error);
}


$foods = array();
while ($row = $result->fetch_assoc()) {
    $foods[] = $row;
}


$connection->close();


header('Content-Type: application/json');

echo json_encode($foods);
?>
