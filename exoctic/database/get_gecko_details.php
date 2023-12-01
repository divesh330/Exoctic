<?php

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'exoctic');

$geckoId = $_GET['id'];

$connection = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);


if ($connection->connect_error) {
    die('Connection failed: ' . $connection->connect_error);
}


$query = "SELECT name ,pic ,description,price,color FROM product WHERE id = ? ";

$stmt = $connection->prepare($query);

$stmt->bind_param("i", $geckoId);

$stmt->execute();

$result = $stmt->get_result();


if (!$result) {
    die('Error fetching gecko details: ' . $connection->error);
}

$geckoDetails = $result->fetch_assoc();


$stmt->close();
$connection->close();

// Set the response header to indicate JSON content
header('Content-Type: application/json');

// Send the gecko details as JSON response
echo json_encode($geckoDetails);
?>
