<?php
date_default_timezone_set('Asia/Kuala_Lumpur'); 
error_reporting(E_ALL);
ini_set('display_errors', 1);

use PHPMailer\PHPMailer\PHPMailer; 
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php'; 
require 'phpmailer/src/PHPMailer.php'; 
require 'phpmailer/src/SMTP.php';
require 'db_connection.php';

if (isset($_POST['send_otp'])) {
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    
    if (!$email) {
        die("Invalid email address");
    }


    $check_email_stmt = $conn->prepare("SELECT customerEmail FROM customer WHERE customerEmail = ?");
    $check_email_stmt->bind_param("s", $email);
    $check_email_stmt->execute();
    $check_result = $check_email_stmt->get_result();

    if ($check_result->num_rows > 0) {

        echo "<script>alert('Email is already in use. Please use another email.'); window.location='send_otp.php';</script>";
        exit;  
    }

    $otp = sprintf("%06d", mt_rand(0, 999999));
    $current_time = date('Y-m-d H:i:s'); 
    $expires_at = date('Y-m-d H:i:s', strtotime('+15 minutes')); 
  
    $stmt = $conn->prepare("INSERT INTO customer_otp (email, otp, created_at, expires_at) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $email, $otp, $current_time, $expires_at);
    $stmt->execute();

    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'yxlim040904@gmail.com';
    $mail->Password = 'tpkkvwomocngopuy';
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port = 465;

    $mail->setFrom('yxlim040904@gmail.com', 'OTP Verification');
    $mail->addAddress($email);
    $mail->isHTML(true);
    $mail->Subject = 'Your OTP Code';
    $mail->Body = "Your OTP is: $otp. This code will expire in 15 minutes.";

    if($mail->send()) {
        echo "<script>alert('OTP sent successfully'); window.location='verify_otp_page.php?email=" . urlencode($email) . "';</script>";
    } else {
        echo "Message could not be sent.";
    }
}
?>
