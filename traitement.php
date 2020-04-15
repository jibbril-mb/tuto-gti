
 <?php
/*
if (isset($_POST['produit']) && isset($_POST['categorie'])) {
    // on affiche nos résultats 
  
echo 'le produit est:'.$_POST['produit'].' et sa catégorie  est : '.$_POST['categorie'];*/

//var_dump($_POST['produit'], $_POST['categorie'],$_POST['prix_unitaire'], $_POST['montant'],$_POST['date']);
//include 'connect_BD.php';

?>
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traitement du formulaire</title>
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
</head>

<body>
    <table>  
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
                 <?php echo $_POST['produit'] ?>
            </td>
        
        
            <td>
                 <?php echo $_POST['categorie'] ?>
            </td>
        
        
            <td>
                  <?php echo $_POST['prixunitaire'] ?>
            </td>
        
    
            <td>
                  <?php echo $_POST['montant'] ?>
            </td>
        
        
            <td>
                 <?php echo $_POST['date'] ?>
            </td>
        </tr>   
     
    </table>
</body>
</html>











