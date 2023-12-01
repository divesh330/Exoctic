<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
   
    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["message"];



    $recipient_email = "xuanzhichu3131@gmail.com"; 
    $subject = "Enquiry from " . $name;


    $email_message = "Name: $name\n";
    $email_message .= "Email: $email\n";
    $email_message .= "Message:\n$message\n";



    
    $headers = "From: $email"; 
    if (mail($recipient_email, $subject, $email_message, $headers)) {
        
        $response = array("status" => "success", "message" => "Enquiry sent successfully!");
    } else {
       
        $response = array("status" => "error", "message" => "Error sending enquiry. Please try again later.");
    }

    
    header("Content-Type: application/json");
    echo json_encode($response);
} else {
    http_response_code(405);
    echo "Method Not Allowed";
}
?>
