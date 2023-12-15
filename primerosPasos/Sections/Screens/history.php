<?php
    session_start();
    include('conexion.php');
    if (isset($_SESSION['userId'])) {
        $userId = $_SESSION['userId'];
    }else{
        session_abort();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <h1>Historial</h1>
    <div class="Biblioteca">
        <?php
            $i=0;
            $albumsL=0;
            $cancionesL=0;
            $artistasL=0;
            $duracion=0;
            $userId = 1;
            // $sql = 'SELECT * from biblioteca WHERE usuarios_id ='.$userId.'';
            $sql = "SELECT * FROM historial WHERE usuarioId ='$userId' ORDER BY historial.id DESC";
            $biblioteca= mysqli_query($conexion, $sql);
            while ($todo = mysqli_fetch_assoc($biblioteca)) {
                $i+=1;
                $link='';
                $img='';
                $artistName='';
                $artistId='';
                $albumId= '';
                $tipo = $todo['tipo'];
                $nombre = $todo['nombre'];
                $time = $todo['horario'];
                $idSP = $todo['idSpotify'];
                switch ($tipo) {
                    case 'Cancion':
                        $sql2 = "SELECT * from canciones WHERE idSpotify ='$idSP'";
                        $canciones= mysqli_query($conexion, $sql2);
                        while ($cancion = mysqli_fetch_assoc($canciones)) {
                            $link = $cancion['previewUrl'];
                            $artistaId = $cancion['artista'];
                            $albumId = $cancion['album'];
                            $idSpotify = $cancion['idSpotify'];
                            $sql2 = "SELECT * from artistas WHERE artista_idSpotify ='$artistaId'";
                            $artist= mysqli_query($conexion, $sql2);
                            if ($link == 'nulo') {
                                //tomar canciones por deezer
                            }
                            while ( $art = mysqli_fetch_assoc($artist)) {
                                $artistName=$art["nombre"];
                                $artistId=$art["artista_idSpotify"];
                            }
                            $sql3 = "SELECT * from albumes WHERE album_idSpotify ='$albumId'";
                            $albumes= mysqli_query($conexion, $sql3);
                            while ($albume = mysqli_fetch_assoc($albumes)) {
                                $albumId= $albume['album_idSpotify'];
                                $img = $albume['imgAlbum'];
                            }
                            $cancionesL +=1;
                            echo '
                                <div class="elemento" id="'.strtolower($tipo).$cancionesL.'" value="'.$link.'">
                                    <img id="imgS'.$cancionesL.'" src="'.$img.'" alt="">
                                    <div class="text">
                                        <p id="name'.$cancionesL.'">'.$nombre.'</p>
                                        <p id="artist'.$cancionesL.'">'.$artistName.'</p>
                                    </div>
                                    <p style="display: none" id="dur'.$cancionesL.'">'.$duracion.'</p>
                                    <p style="display: none" id="albumSong'.$cancionesL.'">'.$albumId.'</p>
                                    <p style="display: none" id="artistaId">'.$artistId.'</p>
                                    <p style="display: none;" id="artistaIdSong'.$cancionesL.'">'.$artistId.'</p>
                                    <p style="display: none" id="timeSong'.$cancionesL.'" >'.$time.'</p>
                                    <p style="display: none" id="songBD'.$cancionesL.'" >'.$idSpotify.'</p>
                                </div>
                            ';
                        }
                        break;
                    case 'Album':
                        $sql2 = "SELECT * from albumes WHERE nombre ='$nombre'";
                        $albumes= mysqli_query($conexion, $sql2);
                        while ($album = mysqli_fetch_assoc($albumes)) {
                            $artistId = $album['album_idSpotify'];
                            $sql3 = "SELECT * from artistas WHERE artista_idSpotify ='$artistId'";
                            $artistAlbum = mysqli_query($conexion, $sql3);
                            $artista = mysqli_fetch_assoc($artistAlbum);
                            while ($art = mysqli_fetch_assoc($artistAlbum)) {
                                $artistName = $art['nombre'];
                            }
                            $albumImg = $album['imgAlbum'];
                            $albumLength = $album['canciones'];
                            $albumId = $album['album_idSpotify'];
                            $albumType = $album['type'];
                            // var_dump($album);
                            $albumsL += 1;
                        echo'
                            <div class="elemento" id="'.strtolower($tipo).$albumsL.'" value="'.$albumId.'" style width="15%">
                                <img id="imgAl'.$albumsL.'" width="10%" height="10%" src="'.$albumImg.'" alt="">
                                <div class="text">
                                <h3 id="albumName'.$albumsL.'" >'.$nombre.'</h3>
                                <p id="artistaAlbum'.$albumsL.'" style="display: none;">'.$artistName.'</p>
                                </div>
                                <p style="display: none">canciones: </p>
                                <p style="display: none" id ="cantCancionesAlbum'.$albumsL.'" value="'.$albumLength.'" >'.$albumLength.'</p>      
                                <p style="display: none" id="albumId'.$albumsL.'" value="'.$albumId.' ?>" style="display: none;">'.$albumId.'</p>
                                <h4 style="display: none">'.$albumType.'</h4>
                                <p style="display: none" id="timeAlbum'.$albumsL.'" >'.$time.'</p>
                            </div>
                        ';
                        }
                        break;
                    // case 'Artista':
                    //     $sql2 = "SELECT * from artistas WHERE nombre ='$nombre'";
                    //     $artistas= mysqli_query($conexion, $sql2);
                    //     while ($artista = mysqli_fetch_assoc($artistas)) {
                    //         if (isset($artista['imgArtista'])) {
                    //             $img = $artista['imgArtista'];
                    //         }
                    //         $popularidad = $artista['popularidad'];
                    //         $seguidores = $artista['seguidores'];
                    //         $artistId = $artista["artista_idSpotify"];
                    //         $art = $artista["id"];
                    //         $generos = '';
                    //         $sql2 = "SELECT * from artistas_generos WHERE artista_id ='$artistId'";
                    //         $generosArt= mysqli_query($conexion, $sql2);
                    //         while ($generoo = mysqli_fetch_assoc($generosArt)) {
                    //             $idGenero = $generoo['id'];
                    //             $sql2 = "SELECT nombre from generos WHERE id ='$idGenero'";
                    //             $genero= mysqli_query($conexion, $sql2);
                    //             $generos = $generos.mysqli_fetch_assoc($genero)['nombre'];
                    //         }
                    //         $artistasL +=1;
                    //         echo '
                    //         <div id="'.strtolower($tipo).$artistasL.'" value="'.$artistId.'">
                    //             <p id="artista'.$artistasL.'name">'.$nombre.'</p>
                    //             ';
                    //                 echo '<img src="'.$img.'" style="width: 250px ; heigth: 250px;" alt="">';
                    //             echo '<p>Popularidad: '.$popularidad.'</p>
                    //             <p>generos: '.($generos).'</p>
                    //             <p id="timeArtist'.$artistasL.'" >'.$time.'</p>
                    //             </div>';
                    //     }
                    //     break;
                    // case 'Playlist':
                        // $sql2 = "SELECT * from artistas WHERE nombre ='$nombre'";
                        // $artistas= mysqli_query($conexion, $sql2);
                        // while ($artista = mysqli_fetch_assoc($artistas)) {
                        //     if (isset($artista['imgArtista'])) {
                        //         $img = $artista['imgArtista'];
                        //     }
                        //     $popularidad = $artista['popularidad'];
                        //     $seguidores = $artista['seguidores'];
                        //     $artistId = $artista["artista_idSpotify"];
                        //     $art = $artista["id"];
                        //     $generos = '';
                        //     $sql2 = "SELECT * from artistas_generos WHERE artista_id ='$artistId'";
                        //     $generosArt= mysqli_query($conexion, $sql2);
                        //     while ($generoo = mysqli_fetch_assoc($generosArt)) {
                        //         $idGenero = $generoo['id'];
                        //         $sql2 = "SELECT nombre from generos WHERE id ='$idGenero'";
                        //         $genero= mysqli_query($conexion, $sql2);
                        //         $generos = $generos.mysqli_fetch_assoc($genero)['nombre'];
                        //     }
                        //     $artistasL +=1;
                        //     echo '
                        //     <div id="'.strtolower($tipo).$artistasL.'" value="'.$artistId.'">
                        //         <p id="artista'.$artistasL.'name">'.$nombre.'</p>
                        //         ';
                        //             echo '<img src="'.$img.'" style="width: 250px ; heigth: 250px;" alt="">';
                        //         echo '<p>Popularidad: '.$popularidad.'</p>
                        //         <p>generos: '.($generos).'</p>
                        //         <p id="timeArtist'.$artistasL.'" >'.$time.'</p>
                        //         </div>';
                        // }
                        // echo ':Playlist:';
                        // break;
                    default:
                        break;
                    
                }
                echo '
                    ';
                // $sql = 'SELECT * from biblioteca WHERE usuarios_id ='.$userId.'';
                // $artistas= mysqli_query($conexion, $sql);
                ?>
                
                <?php
            }
        ?>
        <p style="display: none;" id="canciones.length"><?php echo $cancionesL; ?></p>
        <p style="display: none;" id="albums.length"><?php echo $albumsL; ?></p>
        <p style="display: none;" id="artistas.length"><?php echo $artistasL; ?></p>
    </div>
</body>
</html>