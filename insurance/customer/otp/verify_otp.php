<?php
session_start();
require 'db_connection.php';

date_default_timezone_set('Asia/Kuala_Lumpur');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $otp = $_POST['otp'];

    if (!$email || !$otp) {
        die("Invalid email or OTP");
    }

    $current_time = date('Y-m-d H:i:s');

    $stmt = $conn->prepare("SELECT * FROM customer_otp WHERE email = ? AND otp = ? AND expires_at > NOW() AND is_verified = FALSE");
    $stmt->bind_param("ss", $email, $otp);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $update_stmt = $conn->prepare("UPDATE customer_otp SET is_verified = TRUE WHERE email = ? AND otp = ?");
        $update_stmt->bind_param("ss", $email, $otp);
        $update_stmt->execute();

        $_SESSION['verified_email'] = $email;

        echo "<script>alert('OTP verified successfully'); window.location='../register/register.php';</script>";
    } else {
        echo "<script>alert('Invalid or expired OTP'); window.location='send_otp.php';</script>";
    }
}
?>