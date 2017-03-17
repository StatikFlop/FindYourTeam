<!DOCTYPE html>
<?php
$bdd = new PDO('mysql:host=localhost;dbname=findyourteam', 'root', '');
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
<meta name="Content-Language" content="fr" />
<meta name="Description" content="" />
<meta name="Keywords" content="" />
<meta name="Subject" content="" />
<meta name="Content-Type" content="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="style.css" />
<?php
	$id = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$pseudo = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$nom = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$prenom = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$mail = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$bio = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
	$dateNaissance = $bdd->prepare('SELECT * FROM ft_user WHERE id=1');
?>
<title>Profil</title>
</head>

<body class="my_background">

<div class="container">

<div class="row">
<div class="col-md-offset-2 col-md-8">
<h1> Le Profil de <?php echo htmlspecialchars($pseudo); ?><small> :) </small></h1>
<br>
</div>
</div>
<h2> Je suis: <?php echo htmlspecialchars($prenom)?> <?php echo htmlspecialchars($nom);?></h2>
<br>
<h2> Mon Email: <?php echo htmlspecialchars($mail); ?><br/></h2>
<br>
<h2> Ma Description: <?php echo htmlspecialchars($bio); ?><br/></h2>
<br>
<h2> Née le: <?php echo htmlspecialchars($dateNaissance); ?><br/></h2>
<br>
<h2> Id: <?php echo htmlspecialchars($id); ?><br/></h2>


</div>
</body>
</html>