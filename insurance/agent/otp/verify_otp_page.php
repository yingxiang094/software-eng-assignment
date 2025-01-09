<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .otp-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 400px;
        }
        .otp-container h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
            padding: 10px;
        }
        .email-display {
            text-align: center;
            margin-bottom: 20px;
            color: #666;
        }
    </style>
</head>
<body>
    <?php
    if (isset($_GET['email'])) {
        $email = htmlspecialchars($_GET['email']); 
    } else {
        echo "<script>alert('Email is missing. Please go back and try again.'); window.location='send_otp.php';</script>";
        exit;
    }
    ?>

    <div class="otp-container">
        <h2>Verify OTP</h2>
        <div class="email-display">
            Email: <strong><?php echo $email; ?></strong>
        </div>
        
        <form action="verify_otp.php" method="post">
            <input type="hidden" name="email" value="<?php echo $email; ?>">
            <div class="form-group">
                <label for="otp">Enter OTP:</label>
                <input type="text" class="form-control" name="otp" id="otp" placeholder="6-digit OTP" required>
            </div>
            <button type="submit" class="btn btn-primary">Verify OTP</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>