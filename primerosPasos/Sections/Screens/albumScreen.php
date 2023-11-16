<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    $i=1;
        if (isset($_GET['album'])) {
            $album = $_GET['album'];
        }
        if (isset($_GET['artist'])) {
            $artist = $_GET['artist'];
        }
        if (isset($_GET['albumId'])) {
            $albumId = $_GET['albumId'];            
        }
        include('conexion.php');
        $stmt = mysqli_prepare($conexion, "SELECT * from albumes Where album_idSpotify = ?");
        mysqli_stmt_bind_param($stmt, "s", $albumId);
        mysqli_stmt_execute($stmt);
        $albumData = mysqli_stmt_get_result($stmt);
        $row = mysqli_fetch_assoc($albumData);
        $albumImg = $row['imgAlbum'];
        $albumLength= $row['canciones'];
        $albumDuracion= $row['duracion'];

        
        $stmt = mysqli_prepare($conexion, "SELECT * from canciones Where album = ?");
        mysqli_stmt_bind_param($stmt, "s", $albumId);
        mysqli_stmt_execute($stmt);
        $canciones = mysqli_stmt_get_result($stmt);
          function getDeezerPreviewLink($songName, $artistName) {
            $encodedArtistName = urlencode($artistName);
            $encodedSong = urlencode($songName);
            $url = 'https://api.deezer.com/search/track?q='.$encodedSong.'%27'.$encodedArtistName.'';
            $data = json_decode(file_get_contents($url), true);
            if (isset($data['data'][0]['preview'])) {

            $previewLink = $data['data'][0]['preview'];
            }else {
              $previewLink ='nulo';
            }
            return $previewLink;
          }
          
        
    ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>album</title>
</head>
<body>
    <h1 id="album" ><?php echo $album ?></h1>
    <h4>de </h4>
    <h4 id="artist" ><?php echo $artist ?></h4>
    <?php
        while ($row = mysqli_fetch_assoc($canciones)) {
        $idSong = $row['id'];
        $previewLink = $row['previewUrl'];
        $nombre = $row['nombre'];
        $duracion = $row['duracion'];
        if ($previewLink == 'nulo' || $previewLink == null) {
        //   $previewLink = getDeezerPreviewLink($nombre, $artist);
        $previewLink = 'nulo';
        echo '
        <style>
            #cancion'.$i.'{
                background-color:#7fc3ff;
            }
        </style>
        ';
        }else{
            echo'
            <style>
                #cancion'.$i.'{
                    background-color: green;
                }
            </style>
            ';
        }
            echo '
            <div id="cancion'.$i.'" value="'.$previewLink.'" style="width: 30%">
                <img id="imgS'.$i.'" src="'.$albumImg.'" style="width:50%; height:50%" alt="">
                <p id="name'.$i.'">'.$nombre.'</p>
                <p id="artist'.$i.'">'.$artist.'</p>
                <p id="dur'.$i.'">'.$duracion.'</p>
                <p id="albumSong'.$i.'">'.$album.'</p>
                <p id="artistaId">'.$artist.'</p>
            </div> 
            ';
            $i+=1;
          }
    ?>
    <p id="canciones.length"><?php echo $i; ?></p>
    <div id="contenidoAlbum"></div>
    <div id="canciones">
    </div>
</body>
</html>