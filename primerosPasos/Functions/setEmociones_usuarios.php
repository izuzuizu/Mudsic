<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {
        $issetReaction = false;
        $emotionId = $_POST['emotionId'];
        $songId = $_POST['songId'];
        $sql="SELECT * from emociones_usuarios WHERE usuario_id = '$userId' AND cancion_id = '$songId'";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $sql = "UPDATE emociones_usuarios SET emocion_id = '$emotionId' WHERE  cancion_id = '$songId' AND usuario_id = '$userId'";
            $artistas = mysqli_query($conexion, $sql);
            echo'
                <p id="Result'.$i.'" songId="'.$song.'" emotionId="'.$song.'"></p>
            ';
            $issetReaction = true;
        }
        if ($issetReaction == false) {
            $sql = "INSERT INTO emociones_usuarios (emocion_id, cancion_id, usuario_id) VALUES ('$emotionId','$songId', '$userId')";
            $artistas = mysqli_query($conexion, $sql);    
        }
    }
    ?>
</body>