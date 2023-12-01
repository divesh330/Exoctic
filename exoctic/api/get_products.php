<?php
// Database configuration
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

// Fetch geckos data from the database
$sql = "SELECT * FROM product";
$result = $conn->query($sql);

// Initialize an array to store fetched gecko data
$products = array();

// Check if there is data available
if ($result->num_rows > 0) {
    // Loop through each row in the database result set
    while($row = $result->fetch_assoc()) {
        // Add each row (gecko data) to the geckos array
        $products[] = $row;
    }
}

// Set response header to JSON format
header('Content-Type: application/json');

// Return the gecko data as JSON
echo json_encode($products);

// Close the database connection
$conn->close();
?>
