<?php
    include("../../Functions/conexion.php");
    session_start();
?>

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

            <h2><a href="moods.php?feliz">feliz</a></h2>
            <h2><a href="moods.php?triste">triste</a></h2>
            <!-- <h2><a href="Seccion2.php?feliz">feliz</a></h2>
            <h2><a href="Seccion2.php?feliz">feliz</a></h2> -->
        </div>
    </div>

    <?php
    // if(isset($_GET["feliz"])) {

        $sql = "SELECT cancion_id FROM emociones_usuarios WHERE emocion_id = 1"; 
        $datos = mysqli_query($conexion, $sql);

        while ($usuarios=mysqli_fetch_assoc($datos)) {
            $id_emocion = $usuarios["cancion_id"];
            echo $id_emocion;
            echo "<br>";

            $sql2 = "SELECT * FROM canciones WHERE id = $id_emocion"; 
            $datos2 = mysqli_query($conexion, $sql2);

            while ($canciones=mysqli_fetch_assoc($datos2)) { 
                $nombre = $canciones["nombre"];
                $duracion = $canciones["duracion"];
                $artista = $canciones["artista"];
                $album = $canciones["album"];

                
                echo "<h2>$nombre</h2> 
                      <p>$duracion</p>
                      <p>$artista</p>
                      <p>$album</p>";

            }
        }
    // }

        // if(isset($_GET["triste"])) {

            $sql = "SELECT cancion_id FROM emociones_usuarios WHERE emocion_id = 2"; 
            $datos = mysqli_query($conexion, $sql);
    
            while ($usuarios=mysqli_fetch_assoc($datos)) {
                $id_emocion = $usuarios["cancion_id"];
                echo $id_emocion;
                echo "<br>";
    
                $sql2 = "SELECT * FROM canciones WHERE id = $id_emocion"; 
                $datos2 = mysqli_query($conexion, $sql2);
    
                while ($canciones=mysqli_fetch_assoc($datos2)) { 
                    $nombre = $canciones["nombre"];
                    $duracion = $canciones["duracion"];
                    $artista = $canciones["artista"];
                    $album = $canciones["album"];
    
                    echo "<h2>$nombre</h2> 
                      <p>$duracion</p>
                      <p>$artista</p>
                      <p>$album</p>";
    
                }
            }
        // }

    ?>
</body>
</html>