<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./estilos/gustos.css">
    <title>Document</title>
</head>
<body>
    <div id="contSeccion2" class="seccion">
        <div class="cont">      
            <h1>Favs</h1>
            //Acá se deberia generar el contenido como en seccion 1 pero que sean los que le gustan al usuario

            <p><a href="Seccion2.php?primerClick">albumes</a></p>
        </div>
    </div>

    <?php
    include("../Functions/conexion.php");
    session_start();

    if(isset($_GET["primerClick"])) {
        $sql = "SELECT emocion_id FROM emociones_usuarios"; 
        $datos = mysqli_query($conexion, $sql);

        // if(mysqli_num_rows($datos) > 0) {
        // $usuarios=mysqli_fetch_assoc($datos);
        //     echo $usuarios["emocion_id"];  
        // }

        while ($usuarios=mysqli_fetch_assoc($datos)) {
            $id_emocion = $usuarios["emocion_id"];
            echo $id_emocion;
            echo "<br>";

            $sql = "SELECT nombre FROM emociones WHERE id = '$id_emocion'"; 
            $datos = mysqli_query($conexion, $sql);
            while($emocion2=mysqli_fetch_assoc($datos)) {
                $emociones = $emocion2["nombre"];
                echo $emociones;
            }
            // echo $emocion2["nombre"];

            echo '<p>'.$emociones.'</p>';
        }
        
    }
    ?>
</body>
</html>