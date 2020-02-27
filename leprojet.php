  <?php include("includes/head.php");?>
   
    
               
            
<?php
 $requete = 'SELECT * FROM projet WHERE id_p = '.$_GET['id'];
 $requete = $bdd -> query($requete);
 if ($reponse = $requete -> fetch())

 {
    echo' <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>'.$reponse['titre'].'</h2>
                    <hr class="star-primary">
                </div>
            </div>
        </div>'; 
     $requete = 'SELECT * FROM image WHERE principal !=1 AND id_p = '.$_GET['id'];
     $requete = $bdd -> query($requete);
     echo '<div class="row">';
     while ($reponse1 = $requete -> fetch())
     {
         echo '<div class="col-sm-4 portfolio-item"><a class="zoombox zgallery1" href="'.$reponse1['nom_img'].'"><img src="'.$reponse1['nom_img'].'" class="img-responsive" alt=""></a></div>';
     }
       
 
     echo '</div>';
     echo '     <div class="container">
                <h2 style="text-align: center">Description:
                </div><hr class="star-primary"><h3 style ="text-align: center"> ';
     $des = "";
        $limit=0;
     for($i=0; $i< strlen ($reponse['description']); $i++)
     {
      if ($limit > 100 and $reponse['description'][$i]==' ')
        {
          $limit=0;
          
         echo "<br/>";
            
        }
        
        echo $reponse['description'][$i];
        
        $limit ++;
     }
         
     echo '</h3></h2>';
     echo '<p>'.$des.'</p>';      
            
     
     $requete = 'SELECT * FROM englober e, competence c WHERE e.id_comp=c.id_comp AND e.id_p = '.$_GET['id'];
     
     echo "<div style='margin-top: 100px'><h2 style='text-align: center'>Compétence:</h2><hr class='star-primary'>";
     $requete = $bdd -> query($requete);
     while ($reponse = $requete -> fetch())
     {
         echo "<p style='text-align: center'>".$reponse['titre']." ".$reponse['description']."</p></div>";

     }
        $requete = 'SELECT * FROM projet p, categorie c WHERE p.id_cat=c.id_cat AND p.id_p = '.$_GET['id'];
     
        echo "<div style='margin-top: 100px'><h2 style='text-align: center'>Catégorie:</h2><hr class='star-primary'>";   
     
     $requete = $bdd -> query($requete);
     while ($reponse = $requete -> fetch())
     {
         echo "<p style='text-align: center'>".$reponse['titre'].":<br/> ".$reponse['description']."</p></div>";
     }
     
     $requete = 'SELECT * FROM projet WHERE id_p = '.$_GET['id'];
     
     echo "<div style='margin-top: 100px'><h2 style='text-align: center'>Date Début / Fin:</h2><hr class='star-primary'>";   
     
     $requete = $bdd -> query($requete);
     if ($reponse = $requete -> fetch())
         echo "<p style='text-align: center'>".$reponse['date_deb']." /  ".$reponse['date_fin']."</p></div>";
     
 }
    echo '</section>';
  if (isset($_SESSION['connecte']))
  {
      echo "<center><div class='row'><a href='majprojet.php?id_projet=".$_GET['id']."'<h1>Modifier / </h1></a>";
      echo "<a href='sup.php?id_p=".$_GET['id']."'<h1>Supprimer</h1></a></center></div>";
  }

?>



<?php include("includes/footer.php"); ?>