<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $songId = $_POST['songId'];
        $sql="SELECT * from canciones WHERE id = '$songId'";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $id = $todo['id'];
            $name = $todo['nombre'];
            $duration = $todo['duracion'];
            $albumId = $todo['album'];
            $artistId = $todo['artista'];
            $previewLink = $todo['previewUrl'];
            $idSpotify = $todo['idSpotify'];
                echo'
                    <p id="Result'.$i.'" name="'.$name.'" idBd="'.$id.'" duration="'.$duration.'"  albumId="'.$albumId.'" artistId="'.$artistId.'" previewLink="'.$previewLink.'" idSpotify="'.$idSpotify.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>