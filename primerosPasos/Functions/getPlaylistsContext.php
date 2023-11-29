<?php 
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
        $sql="SELECT * from playlists WHERE usuarios_id = '$userId'";
        $resulta = mysqli_query($conexion, $sql);
?>
    <?php
    $i=0;
    while ($todo = mysqli_fetch_assoc($resulta)) {
        $emotion = $todo['nombre'];
        $i++;
        echo'
            <p class="option" id="Playlist'.$i.'">'.$emotion.'</p>
        ';
    }
    ?>
