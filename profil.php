<!DOCTYPE html>
<html>
	<head>
		<?php
			include "view/head.php";
			include "asset/config.php";
			session_start();
		?>
		<title>Profil</title>
	</head>

	<body class="my_background">
		<?php include "view/menu.php" ?>
		<div class="container">

			<div class="row">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-6">
					<div class="container-fluid bg-1 text-center">
						<br>
							<img src=<?php echo $_SESSION['photoProfil']; ?> class="img-circle" style="width: 250px; height: 250px; background: black;">
							<br><br>
							<label><?php echo $_SESSION['pseudo']; ?></label>
							<br><br>
					</div>

					<br>

					<div class="col-sm-7">
					<strong>Bio :</strong> <br>
						<?php echo $_SESSION['bio']; ?>
					</div>
					<div class="col-sm-4">
						<label style="font: bold 14px/18px Helvetica, Arial, sans-serif;"><img src="asset/images/twitter/Twitter_Social_Icon_Blue.png" style="width: 29px;"><?php echo $_SESSION['twitter']; ?></label>
						<br><br>
						<label><img src="asset/images/youtube/YouTube-icon-full_color.png" style="width: 29px;">		<?php echo $_SESSION['youtube']; ?></label>
						<br><br>
						<label><img src="asset/images/twitch/Glitch_Purple_RGB.png" style="width: 29px;">		<?php echo $_SESSION['twitch']; ?></label>
						<br><br>
						<label><img src="asset/images/facebook/FB-f-Logo__blue_29.png">		<?php echo $_SESSION['facebook']; ?></label>
					</div>
				</div>

				<div class="col-sm-3">
					<blockquote class="quote-box">
				      <p class="quote-text">
				        T'es un bon mec !!!! 
				      </p>
				      <hr>
				      <div class="blog-post-actions">
				        <p class="blog-post-bottom pull-left">
				          StatokFlop
				        </p>
				        <p class="blog-post-bottom pull-right">
				          <span class="badge quote-badge">896</span>  ❤
				        </p>
				      </div>
				    </blockquote>
				    <blockquote class="quote-box">
				      <p class="quote-text">
				        Encore un test 
				      </p>
				      <hr>
				      <div class="blog-post-actions">
				        <p class="blog-post-bottom pull-left">
				          StatokFlop
				        </p>
				        <p class="blog-post-bottom pull-right">
				          <span class="badge quote-badge">212</span>  ❤
				        </p>
				      </div>
				    </blockquote>
				</div>
			</div>
		</div>
	</body>
</html>