<?php include ("includes/header.php");?>

<?php
	if(isset($_POST['submit']))
	{
			$i = 0;
			$login = $_POST["login"];
			$email = $_POST["email"];
			$mdp = $_POST["mdp"];
			$confirm = $_POST["confirm"];
			
			if(empty($login))
			{
				$i++;
				$message .= "Votre login est vide <br/>";
			}
			if(empty($email))
			{
				$i++;
				$message .= "Votre email est vide";
			}
			if (empty($mdp))
			{
				$i++;
				$message .="Votre mdp est vide <br/>";
			}
			if (empty($confirm))
			{
				$i++;
				$message .="Votre confirmation est vide <br/>";
			}
			
			if($mdp != $confirm)
			{
				$i++;
				$message .="Vos mdps ne correspondent pas <br/>";
			}
			
			if($i>0)
			{
				echo "Vous avez ".$i." erreurs<br/>";
				echo $message;
			}
			
		else
		{
         
			$mdp= sha1($mdp);
            //mail($email,"modification du profil","Votre profil a été bien modifié.");
		    $bdd->query("update user set login='".$login."',mdp='".$mdp."',email='".$email."' where id_u= ".$_SESSION['id']);
		}
	}
	
	
	$requete = $bdd->query("SELECT * FROM user WHERE id_u = ".$_SESSION['id']);
	$reponse = $requete->fetch();
	
?>
<div class="fondnav">
    <h1 class="descriptionchoix"> Veuillez bien remplir les critères suivants à fin de modifier vos informations.</h1>
	<form class="inscription" action="#" method="post">
		<label for="login">Login<input type="text" name="login" value="<?php echo $reponse['login']; ?>"/></label><br/>
		<label for="email">Email<input type="email" name="email" value="<?php echo $reponse['email']; ?>"/></label><br/>
		<label for="mdp">Mdp<input type="password" name="mdp"/></label><br/>
		<label for="confirm">Confirmer<input type="password" name="confirm"/></label><br/>
		<input type="submit" name="submit"/>
	</form>
</div>
<?php include ("includes/footer.php"); ?>