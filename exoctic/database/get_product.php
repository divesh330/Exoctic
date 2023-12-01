<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'exoctic');

$connection = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}


$query = "SELECT id,name, pic,type FROM product";

$result = $connection->query($query);

if (!$result) {
    die('Error fetching product data: ' . $connection->error);
}

$products = array();
while ($row = $result->fetch_assoc()) {
    $products[] = $row;
}

$connection->close();

header('Content-Type: application/json');

echo json_encode($products);
?>
