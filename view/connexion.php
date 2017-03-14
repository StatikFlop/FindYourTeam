<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Connexion</title>
  <?php include "head.php" ?>
<body>

<div class="container">
  <h2>Formulaire de connexion</h2>
  <form>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Mot de passe:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Se souvenir de moi</label>
    </div>
    <button type="submit" class="btn btn-default">Envoyer</button>
  </form>
</div>

</body>
</html>