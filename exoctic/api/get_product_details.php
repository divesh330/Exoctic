<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exoctic";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get product ID from the request parameter
$productId = $_GET['id'];

// Query to fetch product details
$sql = "SELECT * FROM product WHERE id = $productId";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode($row); // Return product details as JSON
} else {
    echo "Product not found";
}

$conn->close();
?>
