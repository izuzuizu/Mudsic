<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $sql="SELECT * FROM playlists WHERE usuarios_id = '$userId' ORDER BY playlists.id DESC";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $songs = [];
            $name = $todo['nombre'];
            $desc = $todo['descripcion'];
            $idPlaylist = $todo['id'];
            $sql="SELECT * FROM playlist_canciones WHERE id_playlist = '$idPlaylist' ORDER BY playlist_canciones.orden ASC";
            $resulta2 = mysqli_query($conexion, $sql);
            while ($cancion = mysqli_fetch_assoc($resulta2)) {
                $songs[$cancion['orden']] = $cancion;
            }
            $songLenght = count($songs);
                echo'
                    <p id="Result'.$i.'" name="'.$name.'" desc="'.$desc.'" songLenght="'.$songLenght.'" idPlaylist="'.$idPlaylist.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>