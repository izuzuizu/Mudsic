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
    
    <h1>Cosas que te gustaron</h1>
    <p>lista de canciones, albums, artistas y playlists con las que interactuas mas</p>
    <div class="Biblioteca">
        <?php
            $i=0;
            $albumsL=0;
            $cancionesL=0;
            $artistasL=0;
            $duracion=0;
            $userId = 1;
            // $sql = 'SELECT * from biblioteca WHERE usuarios_id ='.$userId.'';
            $sql = "SELECT * FROM biblioteca WHERE usuarios_id ='$userId' ORDER BY biblioteca.repeticion DESC";
            $biblioteca= mysqli_query($conexion, $sql);
            while ($todo = mysqli_fetch_assoc($biblioteca)) {
                $i+=1;
                $link='';
                $img='';
                $artistName='';
                $artistId='';
                $albumName= '';
                $type = $todo['tipo'];
                $name = $todo['nombre'];
                switch ($type) {
                    case 'Cancion':
                        $sql2 = "SELECT * from canciones WHERE nombre ='$name'";
                        $canciones= mysqli_query($conexion, $sql2);
                        while ($cancion = mysqli_fetch_assoc($canciones)) {
                            $link = $cancion['previewUrl'];
                            $artistaId = $cancion['artista'];
                            $albumId = $cancion['album'];
                            $duracion = $cancion['duracion'];
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
                                $albumName= $albume['nombre'];
                                $img = $albume['imgAlbum'];
                            }
                            $cancionesL +=1;
                            echo '
                            <div id="'.strtolower($type).$cancionesL.'" value="'.$link.'" style="width: 30%">
                                <img id="imgS'.$cancionesL.'" src="'.$img.'" style="width:50%; height:50%" alt="">
                                <p id="name'.$cancionesL.'">'.$name.'</p>
                                <p id="artist'.$cancionesL.'">'.$artistName.'</p>
                                <p id="dur'.$cancionesL.'">'.$duracion.'</p>
                                <p id="albumSong'.$cancionesL.'">'.$albumName.'</p>
                                <p id="artistaId">'.$artistId.'</p>
                            </div>
                            ';
                        }
                        break;
                    case 'Album':
                        $sql2 = "SELECT * from albumes WHERE nombre ='$name'";
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
                            <div id="'.strtolower($type).$albumsL.'" value="'.$albumId.'" style width="15%">
                                <h3 id="albumName'.$albumsL.'" >'.$name.'</h3>
                                <img id="imgS'.$albumsL.'" width="10%" height="10%" src="'.$albumImg.'" alt="">
                                <h4>'.$albumType.'</h4>
                                <p>canciones: </p>
                                <p id ="cantCancionesAlbum'.$albumsL.'" value="'.$albumLength.'" >'.$albumLength.'</p>      
                                <p id="albumId'.$albumsL.'" value="'.$albumId.' ?>" style="display: none;">'.$albumId.'</p>
                                <p id="artistaAlbum'.$albumsL.'" style="display: none;">'.$artistName.'</p>
                            </div>
                        ';
                        }
                        break;
                    case 'Artista':
                        $sql2 = "SELECT * from artistas WHERE nombre ='$name'";
                        $artistas= mysqli_query($conexion, $sql2);
                        while ($artista = mysqli_fetch_assoc($artistas)) {
                            if (isset($artista['imgArtista'])) {
                                $img = $artista['imgArtista'];
                            }
                            $popularidad = $artista['popularidad'];
                            $seguidores = $artista['seguidores'];
                            $artistId = $artista["artista_idSpotify"];
                            $art = $artista["id"];
                            $generos = '';
                            $sql2 = "SELECT * from artistas_generos WHERE artista_id ='$artistId'";
                            $generosArt= mysqli_query($conexion, $sql2);
                            while ($generoo = mysqli_fetch_assoc($generosArt)) {
                                $idGenero = $generoo['id'];
                                $sql2 = "SELECT nombre from generos WHERE id ='$idGenero'";
                                $genero= mysqli_query($conexion, $sql2);
                                $generos = $generos.mysqli_fetch_assoc($genero)['nombre'];
                            }
                            $artistasL +=1;
                            echo '
                            <div id="'.strtolower($type).$artistasL.'" value="'.$artistId.'">
                                <p id="artista'.$artistasL.'name">'.$name.'</p>
                                <img src="'.$img.'" style="width: 250px ; heigth: 250px;" alt="">';
                                echo '<p>Popularidad: '.$popularidad.'</p>
                                <p>generos: '.($generos).'</p>
                            </div>';
                        }
                        break;
                    default:
                        break;
                    
                }
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