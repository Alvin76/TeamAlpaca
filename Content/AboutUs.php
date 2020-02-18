<!doctype html>
<html lang="en">
  <?php require '../includes/functions.php';?>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <link href="../template/about.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <?php head(); ?>
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
                    <a href="https://team-alpaca.herokuapp.com/Content/Home.php">Home

                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="https://team-alpaca.herokuapp.com/Content/AboutUs.php">About</a>
                    <span class="sr-only">(current)</span>
                  </li>
                  <li class="nav-item">
                    <a href="https://team-alpaca.herokuapp.com/Content/HowToInstallIDE.php">TN3270</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">COBOL</a>
                  </li>
                </ul>
              </div>
        </nav>


        <!-- Team -->
    <section id="team" class="pb-5">
        <div class="container">
            <h5 class="section-title h1">OUR TEAM</h5>
            <div class="row">
                <!-- Team member -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="../Images/alpacaAdam.jpg" alt="alpacaAdam"></p>
                                        <h4 class="card-title">Adam</h4>
                                        <p class="card-text">Adam Davies</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Adam</h4>
                                        <p class="card-text">Adam Description</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="https://github.com/Alvin76">
                                                    <i class="fa fa-github" aria-hidden="true"></i>

                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ./Team member -->
                <!-- Team member -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="src=../Images/alpacaEvan.jpeg" alt="alpacaEvan"></p>
                                        <h4 class="card-title">Evan</h4>
                                        <p class="card-text">Evan Jones</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Evan</h4>
                                        <p class="card-text">Evan is lead UI Specialist of the team.</p>
                                                                            <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="https://github.com/True-Final-Boss">
                                                    <i class="fa fa-github" aria-hidden="true"></i>

                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ./Team member -->
                <!-- Team member -->
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                        <div class="mainflip">
                            <div class="frontside">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <p><img class=" img-fluid" src="../Images/alpacaTaylor.jpeg" alt="alpacaTaylor"></p>
                                        <h4 class="card-title">Taylor</h4>
                                        <p class="card-text">Taylor Woods</p>
                                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="backside">
                                <div class="card">
                                    <div class="card-body text-center mt-4">
                                        <h4 class="card-title">Taylor</h4>
                                        <p class="card-text">Taylor Description</p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="https://github.com/Woods-Taylor">
                                                    <i class="fa fa-github" aria-hidden="true"></i>

                                                </a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a class="social-icon text-xs-center" target="_blank" href="#">
                                                    <i class="fa fa-google"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ./Team member -->
    </section>
    <!-- Team -->
    <!-- Page specific content ends here. -->
    <?php footer(); ?>
  </body>
</html>
