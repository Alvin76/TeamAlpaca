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
          <h3>Easy Program 1</h3>
        </h4>
        <p class="card-text">This is an example identification division. It is required for all cobal programs. Because simply laying the foundation for a cobal program is complex and requires well over 100 lines of code we felt that it was appropriate for our easy programs to demonstrate how to do some of these basic sections.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/easy2EnvDivision.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Easy Program 2</h3>
        </h4>
        <p class="card-text">The environment division declares the environment in which the program will run.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/easy3DataDivision.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Easy Program 3</h3>
        </h4>
        <p class="card-text"> The data division is where all variables for the program are declared.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/Medium1.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Medium 1 Hello World and the Procedure Division</h3>
        </h4>
        <p class="card-text">Once the other divisions are in places the programs functions and logic can be implemented in the procedure division. </p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/medium2.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Medium 2 Concatenating Strings</h3>
        </h4>
        <p class="card-text">This shows how to combine strings together and display them.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/medium3.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Medium 3 Addition</h3>
        </h4>
        <p class="card-text">Addition in cobol requires that the right type of variable be used to store the data.</p>
      </div>
    </div>
  </div>
</div>
<div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/hard1.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Hard 1 If Statments and conditional use of functions</h3>
        </h4>
        <p class="card-text">Shows the use of if statments to decide which function to execute.</p>
      </div>
    </div>
  </div>
  <div class="col-lg-6 mb-4">
    <div class="card h-100">
      <a href="#"><img class="card-img-top" src="https://team-alpaca.herokuapp.com/Images/hard2.PNG" alt=""></a>
      <div class="card-body">
        <h4 class="card-title">
          <h3>Hard 2 Making a Header with the Date</h3>
        </h4>
        <p class="card-text">This type of task is very common in Cobol since it is used largely for documents and reports.</p>
      </div>
    </div>
  </div>
<!-- /.row -->
</div>
<!-- /.container -->

    <?php footer() ?>
  </body>
</html>
