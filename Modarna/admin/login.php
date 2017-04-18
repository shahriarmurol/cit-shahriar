<?php session_start();
    require_once('../includes/config.php'); //db connection
    if(!empty($POST)){
        $name = $_POST['user_name'];
        $pass = $POST['pass_word'];
     
        //query
        $slt = "SELECT * FROM cit_user WHERE username='$name' AND password='$pass'";
 
        $qre=mysqli_query($DBCONNECTION, $slt);
        if(mysqli_fetch_array($qre)){
            $_SESSION['username'] = $_POST['user_name']; // session username a form ar username store hoby
            header('Location: index.php');
        }else{
            echo 'Username or Password Incorrect!';
        }
    } 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel:: Home</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
    <h2 class="text-center" style="margin-top: 60px;">Welcome To Admin Panel.</h2>
    <div class="login" style="margin-top:30px;">
	<div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
			<form style="margin-top: 30px;" action="" method="post">
                            <div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="user_name" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="text" name="pass_word" id="password" class="form-control">
                            </div>
                            <input class="btn btn-block btn-success" type="submit" value="Login" name="" />
                        </form>
                    </div>
		</div>
            </div>
	</div>
    </div>
</body>
</html>