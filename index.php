<?php include ("includes/head.php");?>

        <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Portfolio</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
               
            
       <?php
        
        $requete = "SELECT id_p, nom_img FROM image WHERE principal =1";
   
        $requete = $bdd -> query($requete);
		while($reponse = $requete -> fetch())
        {
          echo      '<div class="col-sm-4 portfolio-item">
                    <a href="leprojet.php?id='.$reponse['id_p'].'" class="portfolio-link">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="'.$reponse['nom_img'].'" class="img-responsive" alt="">
                    </a>
                </div>';
        }
         ?>
     <?php if (isset($_SESSION['connecte']))
          echo       ' <div class="col-sm-4 portfolio-item">
                    <a href="ajouter.php" class="portfolio-link">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/new.png" class="img-responsive" alt="">
                    </a>
                </div>';
    ?>
                
            </div>
        </div>
    </section>

<?php include ("includes/footer.php");?>