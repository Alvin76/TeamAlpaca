<!doctype html>
<html lang="en">
  <?php require '../includes/functions.php';?>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <link href="../CSS/style.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <?php head(); ?>
  <body>
    <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">
      <img src="../Images/mystic.png" width="40" height="30" class="d-inline-block align-top" alt="">
      Team Alpaca</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
                  <span class="sr-only">(current)</span>
                </a>
          </li>
          <li class="nav-item">
            <a href="https://team-alpaca.herokuapp.com/Content/AboutUs.php">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Other</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">COBOL</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('https://i.ytimg.com/vi/vLlJxw76qcs/maxresdefault.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4">COBOL</h3>
            <p class="lead">common business-oriented language</p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('https://image2.slideserve.com/3995624/cobol-structure-hello-world-l.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4">COBOL</h3>
            <p class="lead">common business-oriented language</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('https://i.ytimg.com/vi/BZmXkpXm_sw/sddefault.jpg​')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="display-4">COBOL</h3>
            <p class="lead">common business-oriented language</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
    </div>
  </header>

    <!-- Page specific content will go down here. -->
    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <main>
          <div class="text-center">
            <article>Welcome to our COBOL info website. </article>
            <img src='../Images/alpaca-stare.jpg' alt='photo of me' />
          </div>
          <div class="container">
      <h2> The Group <h2>
      <img src="../Images/4alpacas.jpg" alt="Four Alpacas" class="img-fluid" id="4alpacas">
    </div>
    <div class="container">
      <h2> Adam Davies <h2>
      <img src="../Images/alpacaAdam.jpg" alt="alpacaAdam" class="img-fluid">
    </div>
    <div class="container">
      <h2> Taylor Woods <h2>
      <img src="../Images/alpacaTaylor.jpeg" alt="alpacaTaylor" class="img-fluid">
    </div>
    <div class="container">
      <h2> Evan <h2>
      <img src="../Images/alpacaEvan.jpeg" alt="alpacaEvan" class="img-fluid">
    </div>
    <!--
    <div class="container">
      <h2> James Ericsson <h2>
      <img src="../Images/alpacaJames.jpeg" alt="alpacaJames" class="img-fluid">
    </div> -->
        </main>
      </div>
    </div>
    <!-- Page specific content ends here. -->
    <?php footer(); ?>
  </body>
</html>
