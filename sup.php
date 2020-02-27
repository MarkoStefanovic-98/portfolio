<?php include ("includes/head.php");

if (isset($_SESSION['connecte']))
    if(isset($_GET['id_p']))
    {
        $bdd->query("DELETE FROM englober WHERE id_p = ".$_GET['id_p']);
        $bdd->query("DELETE FROM projet WHERE id_p = ".$_GET['id_p']);
        $bdd->query("DELETE FROM image WHERE id_p = ".$_GET['id_p']);
    }
header("location: index.php");
?>
        
<?php include ("includes/footer.php");?>