<?php include ("includes/head.php");

	if(isset($_POST['submit']))
	{
		$login = $_POST['login'];
		$mdp = sha1($_POST['mdp']);
		$requete = $bdd->query("SELECT * FROM user WHERE login = '".$login."' 
								AND mdp = '".$mdp."'");
		
		if($reponse = $requete->fetch())
		{

			$_SESSION["connecte"]= true;
			$_SESSION['id'] = $reponse['id_u'];
            header("location:index.php");
			
		}
		else
		{
			echo "mauvais identifiant";
		}
	}
?>


<div>
<h1 class="descriptionchoix"> Veuillez bien remplir les critères suivants à fin de vous connectez.</h1>
<form class="lolo"method="post">
	Login<input type="text" name="login" /><br>
	Mot de passe<input type="password" name="mdp"/></br>
	<input type="submit" name="submit" />
</form>
</div>

<?php include ("includes/footer.php"); ?>