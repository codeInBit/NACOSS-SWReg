<?php
/**
 * Created by PhpStorm.
 * User: hollydee
 * Date: 10/24/16
 * Time: 3:04 AM
 */
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();

$servername = "localhost";
$username = "root";
$password = "root";

try {
    $conn = new PDO("mysql:host=$servername;dbname=swreg", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
}
if (isset($_POST['submit'])){
    $name = $_POST['name'];
    $school = $_POST['school'];
    $amt = $_POST['amt'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];
    $created_at = $_POST['created_at'];

    $sql = "INSERT INTO register (name, school, amt, email, phone, gender, created_at) VALUES ('$name', '$school', '$amt', '$email', '$phone', '$gender', '$created_at')";
    $res = $conn->exec($sql);
    if (empty($res)) {
        $_SESSION['message'] = "Error";
    } else {
        $_SESSION['message'] = "Success";
//        header("location:index.php");
    }

}
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration | NACOSS South-West Convention</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body  style="background-color: ghostwhite;">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <img class="navbar-brand img-responsive" src="nacossLogo.jpg" style="height: 75px; width: 100px">
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav">
                    &nbsp;
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <li style="padding-top: 10px"><a href="">NACOSS SOUTH-WEST ZONE</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <ul class="cb-slideshow">
        <li>
            <span>Image 01</span>
        </li>
        <li>
            <span>Image 02</span>
        </li>
        <li>
            <span>Image 03</span>
        </li>
        <li>
            <span>Image 04</span>
        </li>
        <li>
            <span>Image 05</span>
        </li>
        <li>
            <span>Image 06</span>
        </li>
    </ul>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-7">
                <div class="panel panel-default">
                    <?php
                    if(isset($_SESSION['message']) && ($_SESSION['message'] == "Error")) {
                        unset($_SESSION['message']); ?>
                        <h4 class="text-center" style="color: mediumblue">Opps...Registration Failed! Register Again</h4>
                        <?php
                    }else if(isset($_SESSION['message']) && ($_SESSION['message'] == "Success")){
                        unset($_SESSION['message']); ?>
                        <h4 class="text-center" style="color: green">Registration Successful</h4>
                    <?php }
                    ?>
                    <div class="panel-heading text-center" style="font-size: large">NACOSS Convention Registration</div>

                    <div class="panel-body">
                        <form method="POST" action="">
                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter name..." required>
                            </div>
                            <div class="form-group">
                                <label for="school">Institution</label>
                                <input type="text" class="form-control" id="school" name="school" placeholder="Enter Institution..." required>
                            </div>
                            <div class="form-group">
                                <label for="amt">Conference Fee</label>
                                <input type="number" class="form-control" min='1200' id="amt" name="amt" placeholder="Enter amount..." required>
                            </div>
                            <div class="form-group">
                                <label for="website">Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address...">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <div class="input-group">
                                    <span class="input-group-addon">+234</span>
                                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="7066849121" required>
                                </div>
                            </div>
                            <input type="hidden" name="created_at" value="<?php echo date("d-m-y h:i:s"); ?>">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Gender</label><br>
                                        <label> <input type="radio" id="male" name="gender" value="male" required> Male </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <label> <input type="radio" id="female" name="gender" value="female" required> Female </label>                            </div>
                                </div>
                                <div class="col-md-6" style="padding-top: 10px">
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary" name="submit" value="Register"">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="js/jquery-3.1.0.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>