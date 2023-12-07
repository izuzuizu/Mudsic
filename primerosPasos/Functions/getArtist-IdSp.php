<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $artist = $_POST['artistId'];
        $sql="SELECT * from artistas WHERE artista_idSpotify = '$artist'";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $id = $todo['id'];
            $name = $todo['nombre'];
            $img = $todo['imgArtista'];
            $popularity = $todo['popularidad'];
            $followers = $todo['seguidores'];
            $idSpotify = $todo['artista_idSpotify'];
                echo'
                    <p id="Result'.$i.'" id="'.$id.'" name="'.$name.'" img="'.$img.'"  popularity="'.$popularity.'" followers="'.$followers.'" idSpotify="'.$idSpotify.'"></p>
                ';
            $i++;
        }
    }else{
        echo '<h1>error</h1>';
    }
    ?>
</body>