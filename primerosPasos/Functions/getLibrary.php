<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {

        $sql="SELECT * FROM biblioteca WHERE usuarios_id = '$userId' ORDER BY biblioteca.repeticion DESC";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $name = $todo['nombre'];
            $type = $todo['tipo'];
            $repeat = $todo['usuarios_id'];
            $idSpotify = $todo['idSpotify'];
                echo'
                    <p id="Result'.$i.'" name="'.$name.'" type="'.$type.'" repeat="'.$repeat.'" idSpotify="'.$idSpotify.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>