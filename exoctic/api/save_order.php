<?php
// Your database connection code here

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $orderData = json_decode(file_get_contents('php://input'), true);

    $fullName = $orderData['fullName'];
    $email = $orderData['email'];
    $address = $orderData['address'];
    $phoneNumber = $orderData['phoneNumber'];
    $totalAmount = $orderData['totalAmount'];



    

    // Insert order details into your database (example using PDO)
    $stmt = $pdo->prepare("INSERT INTO orders (name, email, address, contact, totalAmount) VALUES (?, ?, ?, ?, ?)");
    $stmt->execute([$fullName, $email, $address, $phoneNumber, $totalAmount]);


    // Send a success response or any necessary information
    http_response_code(200);
    echo json_encode(['message' => 'Order placed successfully']);
} else {
    // Invalid request method
    http_response_code(405);
    echo json_encode(['error' => 'Method Not Allowed']);
}
?>
