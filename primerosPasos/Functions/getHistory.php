<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $sql="SELECT * FROM historial WHERE usuarioId = '$userId' ORDER BY historial.id DESC";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $name = $todo['nombre'];
            $type = $todo['tipo'];
            $time = $todo['horario'];
            $idSpotify = $todo['idSpotify'];
                echo'
                    <p id="Result'.$i.'" name="'.$name.'" type="'.$type.'" time="'.$time.'" idSpotify="'.$idSpotify.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>