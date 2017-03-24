<!DOCTYPE html>
<html>
<?php include "head.php" ?>

<body class="my_background">

	<div class="container">

		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<h1> Inscription <br/> <small> Merci de renseigner vos informations </small></h1>
			</div>
		</div>
		<form method="post" action="inscription.php">
		<div class="row">
			<div class="col-md-offset-2 col-md-3">
				<div class="form-group">
					<label for="Pseudo">Pseudo</label>
					<input type="text" class="form-control champ" id="pseudo" name="pseudo" placeholder="Pseudo">
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-offset-2 col-md-7">
				<div class="form-group">
					<label for="Email">Address Email </label>
					<input type="text" class="form-control champ" id="email" name="email" placeholder="Enter email">
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-offset-2 col-md-3">
				<div class="form-group">
					<label for="Password">Mot de passe</label>
					<input type="password" class="form-control champ" id="password" name="password" placeholder="Mot de passe">
				</div>
			</div>
			<div class="col-md-offset-1 col-md-3">
				<div class="form-group">
					<label for="Vpassword">Vérification mot de passe</label>
					<input type="password" class="form-control champ" id="vpassword" name="vpassword" placeholder="Vérification mot de passe">
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-offset-2 col-md-3">
				<div class="input-group">
					<span class="input-group-addon glyphicon glyphicon-earphone"></span>
					<input type="text" class="form-control champ" placeholder="Téléphone" name="tel" aria-describedby="basic-addon1">
				</div>
				<div class="input-group">
					<span class="input-group-addon glyphicon glyphicon-globe"></span>
					<input type="text" class="form-control champ" placeholder="Adresse" aria-describedby="basic-addon1">
				</div>
			</div>
		</div>

		<br/>
		<div class="row">
		<div class="col-md-offset-5 col-md-1">
			<button type="submit" class="btn btn-primary" id="envoi">Envoyer mes informations</button>
		</div>
		</form>
	</div>


	</div>
</body>
<script type="text/javascript" src="../asset/js/inscri.js"></script>
</html>

<?php
	$pseudo = $_POST['pseudo'];
	$mdp = $_POST['password'];
	$mail = $_POT['email'];
?>