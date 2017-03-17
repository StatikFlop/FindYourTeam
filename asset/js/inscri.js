$(document).ready(function(){
	var $pseudo = $('#pseudo'),
		$mdp = $('#password'),
		$conf = $('#vpassword'),
		$mail = $('#email'),
		$envoi = $('#envoi'),
		$erreur = 0,
		$champ = $('.champ');

	$champ.keydown(function(){
		if($(this).val().length < 5){
			$(this).css({
				borderColor : 'red',
				color : 'red'
				});
			}
			else{
				$(this).css({
					borderColor : 'green',
					color : 'green'
			});
		}
	});

	function Test_adresse_email(mail){
		var emil=$('#mail').val();
		var pattern = new RegExp (/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
		return pattern.test(emil);
	};

	$mail.focusout(function(){
		if(!Test_adresse_email(mail)) {
			$(this).css({//On rend le champ rouge
				borderColor : 'red',
				color : 'red'
			});
		}
		else{
			$(this).css({//Si tout est bon on le rend vert
				borderColor : 'green',
				color : 'green'
			});
		}
	});

	$conf.keyup(function(){
		if($(this).val() != $mdp.val()){//Si la confirmation est differrent du mot de passe
			$(this).css({//On rend le champ rouge
				borderColor : 'red',
				color : 'red'
			});
		}
		else{
			$(this).css({//Si tout est bon on le rend vert
				borderColor : 'green',
				color : 'green'
			});
		}
	});

	$envoi.click(function(e){
		if($mdp.val() != $conf.val()){
			alert("Les mots de passe ne sont pas identiques");
			e.preventDefault();
		}
		else{
			verifier($pseudo);
			verifier($mdp);
			verifier($conf);
			verifier($mail);
		}

		if($erreur == 1){
			e.preventDefault();
			$erreur = 0;
			alert("Merci de remplir tout les champs");
		}
	});

	function verifier(champ){
		if(champ.val() == ""){//Si le champ est vide
			$erreur = 1;
		}
	}
});