<?php
session_start();
include('dp.php');

if (!isset($_SESSION['verified_email'])) {
    echo "<script>alert('Please verify your email first'); window.location='../otp/send_otp.php';</script>";
    exit();
}

if (isset($_POST['savebtn']))
{
    $ctmEmail = $_SESSION['verified_email']; 
    $ctmPassword = $_POST['agentPassword'];

    $checkEmail = "select * from agent where agentEmail = ?";
    $stmt = $conn->prepare($checkEmail);
    $stmt->bind_param("s",$ctmEmail);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result->num_rows > 0)
    {
        echo"<script>alert('Email has already been used! ');</script>";
    }
    else
    {
        $stmt = $conn->prepare("insert into agent(agentEmail,agentPassword)values(?,?)");
        $stmt->bind_param("ss",$ctmEmail,$ctmPassword);
        $stmt->execute();
        
        unset($_SESSION['verified_email']);
        
        echo"<script>alert('Register successfully!'); window.location.href = '../login/login.php';</script>";
    }
    
    $stmt->close();
    $conn->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>agent Registration</title>
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
        .registration-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 400px;
        }
        .registration-container h2 {
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
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Agent Registration</h2>
        <form action="" method="post">
            <div class="form-group">
                <label class="form-label">User ID/Email: </label> 
                <input type="email" class="form-control" name="agentEmail" 
                       value="<?php echo $_SESSION['verified_email']; ?>" disabled>
            </div>
            <div class="form-group">
                <label class="form-label">Password: </label> 
                <input type="password" class="form-control" name="agentPassword" 
                       required placeholder="Enter your password here"> 
            </div>
            <button type="submit" class="btn btn-primary" name="savebtn">Register</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>