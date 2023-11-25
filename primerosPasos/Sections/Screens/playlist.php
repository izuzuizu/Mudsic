<?php
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    // $userId = 1;
    $i = 0;
    $playlistId = $_GET['playlistId'];
    $playlistName = '';
    $playlistDesc = '';
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
        // echo $playlistId;
        $sql="SELECT * from playlist_canciones Where id_playlist = '$playlistId' ORDER BY `playlist_canciones`.`orden` ASC";
        $playlist = mysqli_query($conexion, $sql);
        while ($row = mysqli_fetch_assoc($playlist)) {
            $i++;
            $albumImg ='';
            $albumName ='';
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
                $nombre = $row2['nombre'];
                $duracion = $row2['duracion'];
                $artist = $row2['artista'];
                $sql = "SELECT * from artistas Where artista_idSpotify = '$artist'";
                $album = mysqli_query($conexion, $sql);
                while ($row3 = mysqli_fetch_assoc($album)) {
                    $artist = $row3['nombre'];
                }
                echo '
                    <div class="cancion" id="cancion'.$i.'" value="'.$previewLink.'" idBD="'.$idSong.'" style="width: 30%">
                        <img id="imgS'.$i.'" src="'.$albumImg.'" style="width:50%; height:50%" alt="">
                        <p id="name'.$i.'">'.$nombre.'</p>
                        <p id="artist'.$i.'">'.$artist.'</p>
                        <p id="dur'.$i.'">'.$duracion.'</p>
                        <p id="albumSong'.$i.'">'.$albumName.'</p>
                        <p id="artistaId">'.$artist.'</p>
                    </div> 
                ';
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