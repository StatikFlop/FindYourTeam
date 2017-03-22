<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Connexion</title>
  <?php 
  include "head.php";
  include "../asset/config.php";
  ?>
<body>

<div class="container">
  <h2>Formulaire de connexion</h2>
  <form method="POST">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Mot de passe:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Se souvenir de moi</label>
    </div>
    <button type="submit" class="btn btn-default">Envoyer</button>
  </form>
</div>

</body>
</html>
<?php
  if (isset($_POST["email"]) && isset($_POST["pwd"]))
  {
    $mail = $_POST["email"];
    $mdp = $_POST["pwd"];
    $reponse = $bdd->query('SELECT * from ft_user WHERE mail = "'.$_POST["email"].'" AND mdp = "'.$_POST["pwd"].'";');
    $donnees = $reponse->fetch();
  }
  if (!empty($donnees))
  {
    session_start();

    $_SESSION['pseudo'] = $donnees['pseudo'];
    $_SESSION['facebook'] = $donnees['facebook'];
    $_SESSION['twitter'] = $donnees['twitter'];
    $_SESSION['twitch'] = $donnees['twitch'];
    $_SESSION['youtube'] = $donnees['youtube'];
    $_SESSION['bio'] = $donnees['bio'];
    $_SESSION['photoProfil'] = $donnees['photoProfil'];

    echo $_SESSION['pseudo'];
  }
  else
  {
    echo '
    <div class="alert alert-danger">
      <strong>Attention!</strong>Mauvais Identifiants.
    </div>';
  }
?>