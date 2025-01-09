<?php 
session_start();  
include("dp.php");    

if (isset($_SESSION['agentEmail'])) {     
    header("Location: ../main/main.php");      
    exit(); 
}   

if ($_SERVER["REQUEST_METHOD"] == "POST")  {     
    $ctmEmail = $_POST['agentEmail'];     
    $ctmPassword = $_POST['agentPassword'];           
    
    $stmt = $conn->prepare("SELECT * FROM agent WHERE agentEmail=?");     
    $stmt->bind_param("s", $ctmEmail);      
    $stmt->execute();     
    $result = $stmt->get_result();      
    
    if ($result->num_rows == 1) {         
        $row = $result->fetch_assoc();                  
        if($ctmPassword == $row['agentPassword']) {             
            $_SESSION['agentEmail'] = $ctmEmail;              
            header("Location: ../main/main.php");              
            exit();         
        } else {           
            $error = "Password Incorrect";         
        }     
    } else {       
        $error = "Email not found";     
    }   
}   

$conn->close(); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>agent Login</title>
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
        .login-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 400px;
        }
        .login-container h2 {
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
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Agent Login</h2>
        
        <?php if(isset($error)): ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php endif; ?>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <div class="form-group">
                <input type="text" class="form-control" name="agentEmail" placeholder="User ID" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="agentPassword" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
        
        <div class="register-link">
            Don't have an account? <a href="../otp/send_otp.php">Register here</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>