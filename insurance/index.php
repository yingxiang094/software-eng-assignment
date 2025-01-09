<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Role Selection</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 40px;
        }
        .role-container {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            padding: 40px;
            text-align: center;
            max-width: 500px;
            width: 100%;
        }
        .role-title {
            color: #2c3e50;
            margin-bottom: 30px;
        }
        .role-buttons {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }
        .role-btn {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 15px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #3498db;
            color: white;
            text-decoration: none;
        }
        .role-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            background-color: #2980b9;
        }
        .role-btn i {
            margin-right: 10px;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <h1>Welcome to XXX Insurance Company !</h1>
    <div class="role-container">
        
        <h2 class="role-title">Choose Your Role</h2>
        
        <div class="role-buttons">
            <a href="administrator/login/login.php" class="role-btn">
                <i class="bi bi-person-fill"></i>Administrator
            </a>
            <a href="agent/login/login.php" class="role-btn">
                <i class="bi bi-people-fill"></i>Agent
            </a>
            <a href="customer/login/login.php" class="role-btn">
                <i class="bi bi-person-hearts"></i>Customer
            </a>
            <a href="underwriter/login/login.php" class="role-btn">
                <i class="bi bi-shield-fill-check"></i>Underwriter
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
