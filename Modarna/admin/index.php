<?php session_start();
    require_once('../includes/config.php');
    //login check
    if(!isset($_SESSION['username'])){//db ar username jodi set kora hoy
        header('Location: login.php');//jodi session set kora hoy nai
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin Panel:: Home</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2 class="text-center">Welcome To Admin Panel.</h2>
			<p>Hi, <?php echo $_SESSION['username']; ?> </p>
			<h2>Welcome To Admin Panel.</h2>
			<a class="btn btn-lg btn-danger" href="logout.php">Logout</a>
		</div>
	</div>
</div>
</body>
</html>