<?php
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    // $userId = 1;
    $i = 0;
    $playlistId = $_GET['playlistId'];
    $playlistName = '';
    $playlistDesc = '';
    $lastOrden = 0;
    $sql="SELECT * from playlists Where id = '$playlistId'";
    $playlist = mysqli_query($conexion, $sql);
    while ($row = mysqli_fetch_assoc($playlist)) {
        $playlistName = $row["nombre"];
        $playlistDesc = $row["descripcion"];
    }
?>
<body>
    <h1 id="playlistName"><?php echo $playlistName; ?></h1>
    <p id="playlistDesc" ><?php echo $playlistDesc; ?></p>
    <div id="sortable-list">
    <?php
        $sql="SELECT * from playlist_canciones Where id_playlist = '$playlistId' ORDER BY `playlist_canciones`.`orden` ASC";
        $playlist = mysqli_query($conexion, $sql);
        while ($row = mysqli_fetch_assoc($playlist)) {
            $i++;
            $albumImg ='';
            $albumName ='';
            $artist = '';
            $idSong = $row['id_cancion'];
            $sql = "SELECT * from canciones Where id = '$idSong'";
            $canciones = mysqli_query($conexion, $sql);
            while ($row2 = mysqli_fetch_assoc($canciones)) {
                $albumId = $row2['album'];
                $sql = "SELECT * from albumes Where album_idSpotify = '$albumId'";
                $album = mysqli_query($conexion, $sql);
                while ($row3 = mysqli_fetch_assoc($album)) {
                    $albumImg = $row3["imgAlbum"];
                    $albumName = $row3["nombre"];
                }
                $idSong = $row2['id'];
                $previewLink = $row2['previewUrl'];
                $idSpotify = $row2['idSpotify'];
                $nombre = $row2['nombre'];
                $duracion = $row2['duracion'];
                $artistId = $row2['artista'];
                $sql = "SELECT * from artistas Where artista_idSpotify = '$artistId'";
                $album = mysqli_query($conexion, $sql);
                while ($row3 = mysqli_fetch_assoc($album)) {
                    $artist = $row3['nombre'];
                }
                echo '
                    <div class="cancion" id="cancion'.$i.'" value="'.$previewLink.'" idBD="'.$idSong.'" style="width: 30%">
                        <img id="imgS'.$i.'" src="'.$albumImg.'" style="width:50%; height:50%" alt="">
                        <p id="name'.$i.'">'.$nombre.'</p>
                        <p id="artist'.$i.'">'.$artist.'</p>
                        <p style="display: none;" id="dur'.$i.'">'.$duracion.'</p>
                        <p style="display: none;" id="albumSong'.$i.'">'.$albumName.'</p>
                        <p style="display: none;" id="artistaId">'.$artistId.'</p>
                        <p style="display: none;" id="artistaIdSong'.$i.'">'.$artistId.'</p>
                        <p style="display: none;" id="songBD'.$i.'">'.$idSpotify.'</p>
                    </div> 
                ';
            }
        }
        if (isset($_GET['addSong'])) {
            $songIdSp = $_GET['addSong'];
            $sql="SELECT * from canciones Where idSpotify = '$songIdSp'";
            $cancion = mysqli_query($conexion, $sql);
                echo $songIdSp;
                // print_r($cancion);
            while ($song = mysqli_fetch_assoc($cancion)) {
                echo 'cancion';
                $songId = $song['id'];
                $sql="SELECT * from playlist_canciones Where id_playlist = '$playlistId' AND id_cancion = '$songId' ORDER BY `playlist_canciones`.`orden` ASC";
                $playlistSong = mysqli_query($conexion, $sql);
                $PS = mysqli_fetch_assoc($playlistSong);
                print_r($PS);
                    $o = ($i+1);
                if (!isset($PS['id'])) {
                    $sql = "INSERT INTO playlist_canciones (id_cancion, id_playlist, orden) VALUES ('$songId','$playlistId', '$o')";
                    $artistas = mysqli_query($conexion, $sql);
                }else{
                    // $sql = "UPDATE playlist_canciones SET orden = '$o' WHERE  id_cancion = '$songId' AND id_playlist = '$playlistId'";
                    // $artistas = mysqli_query($conexion, $sql);
                }
            }
        }

    }
    ?>
    <p id="canciones.length"><?php echo $i; ?></p>
    <p id="playlistId" ><?php echo $playlistId; ?></p>
    <form action="" method="post" id="formPlaylist" enctype="multipart/form-data">
    </form>

    <style>
        #sortable-list {
            list-style-type: none;
        }
        .sortable-item {
            margin: 0.5em;
            padding: 0.5em;
            border: 1px solid #ccc;
            cursor: move;
        }
    </style>
        <!-- <li class="sortable-item">Item 1</li>
        <li class="sortable-item">Item 2</li>
        <li class="sortable-item">Item 3</li> -->
    </div>
</body>
</html>