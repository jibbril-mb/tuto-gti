<?php

/*$clef = $_GET['clef'];
$valeur = $_GET['valeur'];
*/
// Ouvril la connexion avec PDO

//Data Source Name
$bdd = new PDO('mysql:host=localhost;dbname=SGB', 'djiby', 'djibybd');

   //requete prepare
/*$req = $bdd->prepare('INSERT INTO produit(libelle, prix_unitaire, nom_categorie) VALUES(:libelle, :prix_unitaire, :nom_categorie)');
$req = execute(array(
     'libelle'=> $libelle,
    'prix_unitaire' => $prix_unitaire,
    'nom_categorie' => $categorie,
));

echo "Les donnees ont été bien ajoutées";
*/

//requete simple
$reponse = $bdd->query('SELECT * FROM produit');

while ($donnees = $reponse->fetch()){



?>


 <!DOCTYPE html>
<html lang="FR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion_BD</title>
</head>

<style media="screen">
    h1{
        text-decoration: underline;
    }
    table{
        margin: 1rem auto;
        width: 80vw;
    }
    thead{
        background-color: #333;
        color: #FFF;
    }
    td{
        padding: 1rem;
    }
    tr{
        border: 1px;
    }
    h1{
        text-align: center;
    }
    form{
        margin-top: 50px;
        margin-bottom: 50px;
        margin-left: 500px;
        
    }
</style>
<body>
    <h1>Gestion des produits :</h1>
    <hr>
    <table>
        <thead>
            <td>produit</td>
            <td>libellé</td>
            <td>prix unitaire</td>
            <td>Categorie</td>              
        </thead>
   
    
     
         <tr>
            <td>
            <?php echo $donnees['id_produit']; ?>
            </td>
             <td>
            <?php echo $donnees['libelle']; ?>
            </td>
            <td>
            <?php echo $donnees['prix_unitaire']; ?>
            </td>
            <td>
            <?php echo $donnees['nom_categorie']; ?>
            </td>
            </tr> 
           <?php
             }  
             $reponse->closeCursor();
            ?>

    </table>
      
</body>
</html>



