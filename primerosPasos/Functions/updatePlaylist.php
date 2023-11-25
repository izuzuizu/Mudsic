<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
        $songs = json_decode($_POST['songs']);
        $name = $_POST['name'];
        $desc = $_POST['desc'];
        // $songs = $_POST['songs'];
        // $songs = [];
        $playlistId = $_POST['playlistId'];
        // $playlistId = 1;
        $img = $_POST['img'];
        $img = '';
        $userId = 1;
        $i=0;
        $firstSong = $songs[0];
        print_r($songs);
        $sql="SELECT * from playlist_canciones Where id_playlist = '$playlistId'";
        $playlist = mysqli_query($conexion, $sql);
        if ($_POST["update"] == 'newSong') {
            $sql = "INSERT INTO playlist_canciones (id_cancion, id_playlist, imagen, usuarios_id) VALUES ('$firstSong','$playlistId', '$img','$userId')";
            $artistas = mysqli_query($conexion, $sql);
        }
        // print_r($playlist);
        // $sql = "INSERT INTO playlists (nombre, descripcion, imagen, usuarios_id) VALUES ('$name','$desc', '$img','$userId')";
        while($song = mysqli_fetch_assoc($playlist)){
        // if ($playlist>0) {
            // print_r($song);
            if ($_POST["update"] == 'true') {
                $sql = "INSERT INTO playlists (nombre, descripcion, imagen, usuarios_id) VALUES ('$name','$desc', '$img','$userId')";
                // $artistas = mysqli_query($conexion, $sql);
            }
            $songId = $songs[$i];
            $orden = $song['orden'];
            // $sql="SELECT * from canciones Where id = '$songId'";
            // $cancion = mysqli_query($conexion, $sql);
            // $cancionn = mysqli_fetch_assoc($cancion);
            // foreach ($orden as $key => $value) {
            //     # code...
            // }
            $ii = ($i + 1);
            $sql = "UPDATE playlist_canciones SET id_cancion = '$songId' WHERE  orden = '$ii' AND id_playlist = '$playlistId'";
            $artistas = mysqli_query($conexion, $sql);
            // echo ($artistas);
            $i++;
        }
?>
    
</body>
</html>