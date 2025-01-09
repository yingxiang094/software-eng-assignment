<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verification Result</title>
</head>
<body>
    <h1>
        <?php echo isset($_GET['status']) && $_GET['status'] === 'success' 
            ? 'OTP Verified Successfully!' 
            : 'OTP Verification Failed.'; ?>
    </h1>
    <a href="send_otp.php">Start Over</a>
</body>
</html>
