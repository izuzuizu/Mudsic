<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $sql="SELECT * from emociones_usuarios WHERE usuario_id = '$userId'";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $song = $todo['cancion_id'];
            $emotion = $todo['emocion_id'];
                echo'
                    <p id="Result'.$i.'" songId="'.$song.'" emotionId="'.$song.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>