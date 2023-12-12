<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="../estilos/aside.css">
    <link rel="stylesheet" href="../estilos/container.css">

</head>
<body>
    <div class="container">
        <?php 
            include 'components/aside.php';
        ?>
        <div class="containerSec" id="containerSec">
            <?php 
                include 'Screens/Seccion1.php';
                include 'Screens/Seccion2.php';
                include 'Screens/Seccion3.php';
                include 'Screens/Seccion4.php';
                // include '../Screens/Seccion2.php';
                // include '../Screens/Seccion3.php';
            ?>      
            <!-- <div id="contSeccion1" class="seccion">Contenido de la sección 1</div>
            <div id="contSeccion2" class="seccion">Contenido de la sección 2</div>
            <div id="contSeccion3" class="seccion">Contenido de la sección 3</div>       -->
        </div>        
    </div>    
    
</body>
</html>
