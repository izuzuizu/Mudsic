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

        $sql = "SELECT * FROM emociones "; 
        $emociones = mysqli_query($conexion, $sql);
        $songsLenght =1;
        while ($emotion=mysqli_fetch_assoc($emociones)) {    
            $emotionId = $emotion['id'];
            $sql = "SELECT * FROM emociones_usuarios WHERE emocion_id = '$emotionId'"; 
            $reactions = mysqli_query($conexion, $sql);

            while ($usuarios=mysqli_fetch_assoc($reactions)) {
            echo '
            <div class="row">
                <h2>'.$usuarios['emocion_id'].'</h2>
                <div id="canciones'.$usuarios['emocion_id'].'" class="elementos">
            ';
                $id_emocion = $usuarios["cancion_id"];
                // echo $id_emocion;
                // echo "<br>";

                $sql2 = "SELECT * FROM canciones WHERE id = $id_emocion"; 
                $datos2 = mysqli_query($conexion, $sql2);

                while ($canciones=mysqli_fetch_assoc($datos2)) { 
                    $nombre = $canciones["nombre"];
                    $idSpotify = $canciones["idSpotify"];
                    $duracion = $canciones["duracion"];
                    $artistaId = $canciones["artista"];
                    $artista = '';
                    $album = $canciones["album"];
                    $link = $canciones["previewUrl"];
                    $img='';
                    $sql = "SELECT * FROM artistas WHERE artista_idSpotify = '$artistaId'"; 
                    $datos3 = mysqli_query($conexion, $sql);
                    $sql = "SELECT * FROM albumes WHERE album_idSpotify = '$album'"; 
                    $datos4 = mysqli_query($conexion, $sql);
                    while ($artistSong=mysqli_fetch_assoc($datos3)) { 
                        $artista = $artistSong['nombre'];
                    }
                    while ($albumSong=mysqli_fetch_assoc($datos4)) { 
                        $img = $albumSong['imgAlbum'];
                    }
                    
                    echo '
                    <div class="elemento" id="cancion'.$songsLenght.'" value="'.$link.'">
                            <img id="imgS'.($songsLenght).'" src="'.$img.'" alt="">
                        <div class="text">
                            <p id="name'.($songsLenght).'">'.$nombre.'</p>
                            <p id="artist'.($songsLenght).'">'.$artista.'</p>
                            <p style="display: none;" id="dur'.($songsLenght).'">'.$duracion.'</p>
                            <p style="display: none;" id="albumSong'.($songsLenght).'">'.$album.'</p>
                            <p style="display: none;" id="artistaIdSong'.($songsLenght).'">'.$artistaId.'</p>
                            <p style="display: none;" id="songBD'.($songsLenght).'">'.$idSpotify.'</p>
                        </div>
                    </div> 
                    ';
                        $songsLenght++;

                }
            echo '
            
            </div>
            </div>';
            }
        }

        echo '
        <p id="canciones.length" value="'.$songsLenght.'">'.$songsLenght.'</p>
        ';
    // }

        // if(isset($_GET["triste"])) {

            // $sql = "SELECT * FROM emociones_usuarios WHERE emocion_id = 2"; 
            // $datos = mysqli_query($conexion, $sql);
    
            // while ($usuarios=mysqli_fetch_assoc($datos)) {
            //     $id_emocion = $usuarios["cancion_id"];
            //     echo $id_emocion;
            //     echo "<br>";
    
            //     $sql2 = "SELECT * FROM canciones WHERE id = $id_emocion"; 
            //     $datos2 = mysqli_query($conexion, $sql2);
    
            //     while ($canciones=mysqli_fetch_assoc($datos2)) { 
            //         $nombre = $canciones["nombre"];
            //         $duracion = $canciones["duracion"];
            //         $artista = $canciones["artista"];
            //         $album = $canciones["album"];
    
            //         echo "<h2>$nombre</h2> 
            //           <p>$duracion</p>
            //           <p>$artista</p>
            //           <p>$album</p>";
    
            //     }
            // }
        // }

    ?>
</body>
</html>