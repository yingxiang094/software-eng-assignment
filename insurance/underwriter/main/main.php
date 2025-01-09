<?php 
session_start(); 

if (!isset($_SESSION['underwriterEmail'])) {
    header("Location: ../login/login.php");
    exit();
}

$currentUserEmail = $_SESSION['underwriterEmail'];

require_once('dp.php');  
$sql = "SELECT * FROM underwriter WHERE underwriterEmail = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $currentUserEmail);
$stmt->execute();
$result = $stmt->get_result();
$userInfo = $result->fetch_assoc();
$stmt->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Underwriter Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            height: 100vh;
            background-color: #2c3e50;
            color: white;
            padding-top: 20px;
        }
        .sidebar a {
            color: rgba(255,255,255,0.7);
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .sidebar a:hover {
            color: white;
            background-color: rgba(255,255,255,0.1);
        }
        .content-area {
            padding: 20px;
        }
        .profile-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        .nav-pills .nav-link.active {
            background-color: #007bff;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar Navigation -->
            <div class="col-md-2 sidebar">
                <div class="text-center mb-4">
                    <h4 class="text-white">Admin Panel</h4>
                </div>
                <nav class="nav nav-pills flex-column">
                    <a class="nav-link active" href="main.php">
                        <i class="bi bi-person me-2"></i>Profile
                    </a>
                    <a class="nav-link" href="#">
                        <i class="bi bi-speedometer2 me-2"></i>Dashboard
                    </a>
                    <a class="nav-link" href="#">
                        <i class="bi bi-people me-2"></i>User Management
                    </a>
                    <a class="nav-link" href="#">
                        <i class="bi bi-gear me-2"></i>Settings
                    </a>
                    <a class="nav-link text-danger" href="logout.php">
                        <i class="bi bi-box-arrow-right me-2"></i>Log Out
                    </a>
                </nav>
            </div>

            <!-- Main Content Area -->
            <div class="col-md-10 content-area">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="profile-card">
                            <h2 class="mb-4">Welcome, <?php echo htmlspecialchars($userInfo['underwriterEmail']); ?>!</h2>
                            <p class="text-muted mb-4">Here is your account information</p>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Account Details</h5>
                                    <ul class="list-unstyled">
                                        <li class="mb-2">
                                            <strong>Email: </strong>
                                            <?php echo htmlspecialchars($userInfo['underwriterEmail']); ?>
                                        </li>
                                        <li class="mb-2">
                                            <strong>Password: </strong>
                                            <?php echo htmlspecialchars($userInfo['underwriterPassword']); ?>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <h5>Quick Actions</h5>
                                    <div class="d-grid gap-2">
                                        <a href="#" class="btn btn-outline-primary">
                                            <i class="bi bi-key me-2"></i>Change Password
                                        </a>
                                        <a href="logout.php" class="btn btn-danger">
                                            <i class="bi bi-box-arrow-right me-2"></i>Log Out
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<?php
$conn->close();
?>