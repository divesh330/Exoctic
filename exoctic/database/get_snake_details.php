<?php

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'exoctic');

$snakeId = $_GET['id'];

$connection = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);


if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}

$query = "SELECT name ,pic ,description,price,color FROM product WHERE id = ? ";

$stmt = $connection->prepare($query);

$stmt->bind_param("i", $snakeId);

$stmt->execute();

$result = $stmt->get_result();

if (!$result) {
    die('Error fetching snake details: ' . $connection->error);
}

$snakeDetails = $result->fetch_assoc();

$stmt->close();
$connection->close();

header('Content-Type: application/json');

echo json_encode($snakeDetails);
?>
