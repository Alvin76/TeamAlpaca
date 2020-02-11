<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php require '../includes/functions.php';?>
    <meta charset="utf-8">
    <title>How to install a COBOL IDE</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../template/home.css">
  </head>
  <body>
    <header>
      <h1>TN3270 vista!</h1>
    </header>
    <!--< ?php nav_menu() ?>-->
    <main>
      <h2>What is the TN3270 vista and why do I need it?</h2>
      <p>TN3270 is the client needed to access the main frame, the mainframe is a computer that is that located at another location. The mainframe that we are using is the CSU’s that’s is provide by IMB in Texas. The TN3270 is one of the tools required to access the mainframe, another is eclipse but that will not be shown in this tutorial. </p>
      <div class="Instalation">
        <h2>How do I get TN3270?</h2>
        <p>
          How you get the TN3270 vista is by downloading it, here is a link for a download, once you have downloaded the client please click on it and the windows install wizard will open.
        </P>
        <img class="Setup" src="../Images/Instalation/SetupIntroWizard.PNG" alt="Instalation Images">
        <p>
          For the installation please click next, that major thing you need to know is if you want to change its installation location from the C Drive
        </p>
        <img class="Setup" src="../Images/Instalation/SetupLocation.PNG" alt="Instalation Images">
        <p>now Install the program</p>
        <img class="Setup" src="../Images/Instalation/SetupInstall.PNG" alt="Instalation Images">
        <p>
           After doing the installation click on the app to lunch it, you should get something that looks like this:
        </p>
        <img class="Setup" src="../Images/Instalation/SetupTN3270.PNG" alt="Instalation Images">
        <p>
          Once here we will enter the IP addresss 192.86.33.118 and change the port to 623, the other options changes the views of the green screen for now don’t change that. This is what it should look like.
        </p>
        <img class="Setup" src="../Images/Instalation/SetupTSOLogin.PNG" alt="Instalation Images">
        <p id="Congrats">
          Congrats you have installed the TN3270!
        </p>
      </div>
      <div class="LoggingOn">
        <h2>How to log on!</h2>
        <p>
          First you need to request a login code from the system administrator Dr. Rogers is the system administrator for the CSU’s mainframe. After receiving a user ID you can now enter “logon CSU00QQ” into the mainframe (Please note the QQ is your user ID).  You should have something that looks like this
        </p>
        <img class="Logon" src="../Images/Instalation/LogonTSO.PNG" alt="Logon Images">
        <p>
          At this screen we will type in your password, the default password is giving by Dr. Rogers, you will need to change your password to a new one that is no longer then 8char I recommend a 7 length password.  One you type in your password hit enter. You should get something that looks like this
        </p>
        <img class="Logon" src="../Images/Instalation/LogonPaswordLogin.PNG" alt="Logon Images">
        <p>
          This is text showing the functions of your user profile program, it is not important to read but will required you hit enter, keep hitting enter until you get to this screen.
         </p>
        <img class="Logon" src="../Images/Instalation/LogonRedText.PNG" alt="Logon Images">
        <p>
          Once you on this screen you have manage to successfully log into the mainframe! Congratulations!
        </p>
        <img class="Logon" src="../Images/Instalation/LogonMainScrean.PNG" alt="Logon Images">
      </div>


    </main>
    <?php footer() ?>
  </body>
</html>
