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
    $playlistId = $_GET['playlistId'];
    $sql="DELETE FROM playlist_canciones WHERE id = '$playlistId'";
    $playlist = mysqli_query($conexion, $sql);
    // print_r($playlist);
    $sql="DELETE FROM playlists WHERE id = '$playlistId'";
    $playlist = mysqli_query($conexion, $sql);
    // print_r($playlist);
?>
</body>
</html>