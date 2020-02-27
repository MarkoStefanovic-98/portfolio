
   <?php include ("includes/head.php"); ?>
    <?php
    $titre = "ajouter";
    if (isset($_SESSION['connecte']))
        {
          
            
            if (isset($_POST['submit']))
            {
               extract($_POST);
                
                if (empty($titre) || empty($desc) || empty($deb) || empty($fin) || empty($cat))
                    echo "<h1> Il manque un des champs obligatoire </h1";
                else
                {
                    /* Pour ajouter un projet */
                    
                    $new = $bdd->prepare("INSERT INTO projet (id_u, titre, description, date_deb, date_fin, id_cat) VALUES (:id_u, :titre, :desc, :deb, :fin, :cat)");
                    
                    $new->bindValue("id_u", $_SESSION['id'], PDO::PARAM_INT);
                    $new->bindValue(":titre", $titre, PDO::PARAM_STR);
                    $new->bindValue(":desc", $desc, PDO::PARAM_STR);
                    $new->bindValue(":deb", $deb, PDO::PARAM_STR);
                    $new->bindValue(":fin", $fin, PDO::PARAM_STR);
                    $new->bindValue(":cat", $cat, PDO::PARAM_INT);
                    $new->execute();
                    
                    /* Pour ajouter les images Principal */
                    
                    $id = $bdd->lastInsertId();
        
                    if(isset($prin)){
                        $img_1 = $bdd->prepare("INSERT INTO image (id_p, nom_img, principal) VALUES (".$id.", :img_p, 1)");

                        $img_1->bindValue(":img_p", "img/portfolio/".$prin, PDO::PARAM_STR);
                        $img_1->execute();
                    }
                    /* Pour ajouter les images secondaire */
                    if(isset($second)){
                        $img_2 = $bdd->prepare("INSERT INTO image (id_p, nom_img) VALUES (".$id.", :img_s)");

                        $img_2->bindValue(":img_s", "img/portfolio/".$second, PDO::PARAM_STR);
                        $img_2->execute();
                    }
                    
                    if(isset($second2)){
                        $img_2 = $bdd->prepare("INSERT INTO image (id_p, nom_img) VALUES (".$id.", :img_s)");

                        $img_2->bindValue(":img_s", "img/portfolio/".$second2, PDO::PARAM_STR);
                        $img_2->execute();
                    }
                    
                    if(isset($second3)){
                        $img_2 = $bdd->prepare("INSERT INTO image (id_p, nom_img) VALUES (".$id.", :img_s)");

                        $img_2->bindValue(":img_s", "img/portfolio/".$second3, PDO::PARAM_STR);
                        $img_2->execute();
                    }
                    $req2 = $bdd->query("SELECT * FROM competence");
                    while ($comp=$req2->fetch())
                    {
                        if(isset($_POST["competence".$comp['id_comp']])){
                            $englober = $bdd->prepare("INSERT INTO englober (id_p, id_comp) VALUES (".$id.", ".$comp['id_comp'].")");
                            
                            $englober->execute();
                        }
                            
                    }
                    
                    header("location: index.php");
                }
            }
            
            $req1 = $bdd->query("SELECT * FROM categorie");
            $req2 = $bdd->query("SELECT * FROM competence");
?>
       <div class="container">
        <form method="post" class="form-group" action="#">
            <label>Titre: (obligatoire) </label>
            <input type="text" class="form-control" name="titre" />
            <br/>
            <label>Description: (obligatoire) </label>
            <br/>
            <textarea id="ckeditor" name="desc" cols="25" rows="15"></textarea>
            <script src="http://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
            <script>CKEDITOR.replace("ckeditor") ;</script>
            <br/>
            <label>Date Debut: (obligatoire) </label>
            <input type="text" class="form-control" name="deb" />
            <br/>
            <label>Date Fin: (obligatoire) </label>
            <input type="text" class="form-control" name="fin" />
            <br/>
            <label>Categorie: (obligatoire) </label>
            <select name="cat" class="form-control" id="sel1">
                <?php
            while($cat = $req1->fetch())
            {
                echo "<option value='".$cat['id_cat']."'>" .$cat['titre']."</option>";
            }
        ?>
            </select>
            <br/>
            <label>Compétence: (obligatoire) </label>
            <br/>
            <div class="checkbox">
            <?php
            while ($comp=$req2->fetch())
            {
                echo '<input type="checkbox" id="competence'.$comp['id_comp'].'" name="competence'.$comp['id_comp'].'" /><label for="
competence'.$comp['id_comp'].'">'.$comp['titre']. $comp['description'].'</label><br/>';
            }
    ?>
            </div>
                <br/>
                <label>Images: </label>
                <br/> Images Principal:
                <input type="file" class="btn btn-default" name="prin" />
                <br/> Images Secondaire:
                <input type="file" class="btn btn-default" name="second" />
                <br/> Images Secondaire:
                <input type="file" class="btn btn-default" name="second2" />
                <br/> Images Secondaire:
                <input type="file" class="btn btn-default" name="second3" />
                <br/>
                <input type="submit" name="submit" class="btn btn-default" value="ajouter" /> </form>
        </div>
        <?php
        }
       
?>
            <?php include("includes/footer.php"); ?>