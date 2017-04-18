<?php session_start();
    if(!isset($_SESSION['username'])){
        header('Location: login.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel:: User</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
    <h2 class="text-center">Admin User List.</h2>	 
</body>
</html>

