<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php require '../includes/functions.php';?>
    <meta charset="utf-8">
    <title>How to install a COBOL IDE</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../template/howto.css">
  </head>
  <body>
    <!-- Navigation -->
  <nav class="navbar navbar-dark primary-color">
         <a class="navbar-brand" href="#">
          <img src="../Images/mystic.png" width="40" height="30" class="d-inline-block align-top" alt="">
          Team Alpaca</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a href="https://team-alpaca.herokuapp.com/Content/home.php">Home

              </a>
            </li>
            <li class="nav-item">
              <a href="https://team-alpaca.herokuapp.com/Content/AboutUs.php">About</a>
            </li>
            <li class="nav-item">
              <a href="https://team-alpaca.herokuapp.com/Content/HowToInstallIDE.php">TN3270</a>
               <span class="sr-only">(current)</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">COBOL</a>
            </li>
          </ul>
        </div>
  </nav>


<!-- Page Content -->
<div class="container">

<!-- Page Heading -->
<h1 class="my-4">TN3270
  <small>What is the TN3270 vista and why do I need it?</small>
</h1>

<div class="row">
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/easy1IdDivision.PNG" alt="whatwhat!"></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>TN3270</h3>
        </h4>
        <p class="card-text">Easy Program 1</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/easy1IdDivision.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Acquisition & Installation</h3>
        </h4>
        <p class="card-text">How you get the TN3270 vista is by downloading it, here is a link for a download, once you have downloaded the client please click on it and the windows install wizard will open.
        For the installation please click next, that major thing you need to know is if you want to change its installation location from the C Drive</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/Instalation/SetupTN3270.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Post Installation</h3>
        </h4>
        <p class="card-text">After doing the installation click on the app to lunch it, you should get something that looks like this. Once here we will enter the IP addresss 192.86.33.118 and change the port to 623, the other options changes the views of the green screen for now don’t change that. This is what it should look like.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/Instalation/LogonTSO.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Logging On</h3>
        </h4>
        <p class="card-text">First you need to request a login code from the system administrator Dr. Rogers is the system administrator for the CSU’s mainframe. After receiving a user ID you can now enter “logon CSU00QQ” into the mainframe (Please note the QQ is your user ID). You should have something that looks like this
</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/Instalation/LogonPaswordLogin.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Password</h3>
        </h4>
        <p class="card-text">At this screen we will type in your password, the default password is giving by Dr. Rogers, you will need to change your password to a new one that is no longer then 8char I recommend a 7 length password. One you type in your password hit enter. You should get something that looks like this</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/Instalation/LogonMainScrean.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Success</h3>
        </h4>
        <p class="card-text">Once you on this screen you have manage to successfully log into the mainframe! Congratulations!</p>
      </div>
    </div>
  </div>
</div>
<!-- /.row -->
</div>
<!-- /.container -->

    <?php footer() ?>
  </body>
</html>
