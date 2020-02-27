
<?php include ("includes/head.php");
if (isset($_SESSION['connecte']))
{

	$id_projet= (int)$_GET['id_projet'];
	if(isset($_POST['submit']))
	{
		$titre = $_POST['titre'];
		$desc = $_POST['desc'];
		$deb = $_POST['deb'];
		$fin = $_POST['fin'];
		$categorie = $_POST['categorie'];
		$competences = $_POST['competences'];
		//MAJ dans la table projet
		$requete = $bdd->prepare("UPDATE projet SET titre = :titre,
																								description = :description,
																								date_deb = :date_deb,
																								date_fin = :date_fin,
																								id_cat = :id_cat,
																								id_u = :id_u
																								WHERE id_p = :id_p");
		$requete->bindValue(':titre', $titre, PDO::PARAM_STR);
		$requete->bindValue(':description', $desc, PDO::PARAM_STR);
		$requete->bindValue(':date_deb', $deb, PDO::PARAM_STR);
		$requete->bindValue(':date_fin', $fin, PDO::PARAM_STR);
		$requete->bindValue(':id_cat', $categorie, PDO::PARAM_INT);
		$requete->bindValue(':id_u', $_SESSION['id'], PDO::PARAM_INT);
		$requete->bindValue(':id_p', $id_projet, PDO::PARAM_INT);
		$requete->execute();

		//MAJ dans englober
		$requete = $bdd->query("DELETE FROM englober WHERE id_p = ".$id_projet);
		foreach($competences as $k => $v)
		{
			$requete = $bdd->prepare("INSERT INTO englober VALUES (:id_projet, :v)");
			$requete->bindValue(':id_projet', $id_projet, PDO::PARAM_INT);
			$requete->bindValue(':v', $v, PDO::PARAM_INT);
			$requete->execute();
		}

		header("location: index.php");

	}

	$requete = $bdd->query("SELECT * FROM projet WHERE id_p = ".$id_projet."");
	$reponse = $requete->fetch();

	$requete_cat = $bdd->query("SELECT * FROM categorie");

	$requete_comp = $bdd->query("SELECT * FROM competence");

	$comp_projet = $bdd->query("SELECT id_comp FROM englober WHERE id_p = ".$id_projet);
	$tab = array();
	while($rep_comp = $comp_projet->fetch())
	{
		$tab[] = $rep_comp['id_comp'];
	}
?>

<div class="container">
<form action="#" class="form-group" method="post">
  <label for="">Titre</label>
  <input type="text" name="titre" class="form-control" value=<?php echo "'".$reponse['titre']."'"; ?>> <br />
  <label>Description</label>
  <textarea id="ckeditor" name="desc" rows="8" cols="80"><?php echo "".$reponse['description'].""; ?></textarea> <br>
  
	
<script src="http://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
<script>CKEDITOR.replace("ckeditor") ;</script>
  
  <label>Début</label>
  <input type="text" class="form-control" name="deb" value=<?php echo "'".$reponse['date_deb']."'"; ?>> <br>
  <label>Fin</label>
  <input type="text" class="form-control" name="fin" value=<?php echo "'".$reponse['date_fin']."'"; ?>> <br>
  <label>Catégorie</label>
  <select name="categorie" class="form-control" id="sel1">
		<?php
			while($categorie = $requete_cat->fetch())
			{
				if($categorie['id_cat'] == $reponse['id_cat'])
				{
					echo "<option selected value='".$categorie['id_cat']."'>".$categorie['titre']."</option>";
				}
				else
				{
					echo "<option value='".$categorie['id_cat']."'>".$categorie['titre']."</option>";
				}
			} ?>
  </select> <br>
    <div class="checkbox">
	<?php
		while($competence = $requete_comp->fetch())
		{
			if(in_array($competence['id_comp'],$tab))
				echo "<input type='checkbox' checked name='competences[]' value='".$competence['id_comp']."'>".$competence['titre'].$competence['description']."</br>";
			else
				echo "<input type='checkbox' name='competences[]' value='".$competence['id_comp']."'>".$competence['titre'].$competence['description']."</br>";
		}
	?>
    </div>
  <input type="submit" name="submit" class="btn btn-default">
</form>
</div>
<?php
        }
else
{
    header("location: index.php");
}
?>
<?php include ("includes/footer.php");?>