<?php 
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    include("conexion.php");
    if (isset($userId)) {
        $sql="SELECT * from emociones ";
        $resulta = mysqli_query($conexion, $sql);
?>
<body>
    <?php
        $i=0;
        while ($todo = mysqli_fetch_assoc($resulta)) {
            $name = $todo['nombre'];
            $emoji = $todo['emoji'];
            $emotionId = $todo['id'];
                echo'
                    <p id="Result'.$i.'" emotionId="'.$emotionId.'" name="'.$name.'" emoji="'.$emoji.'"></p>
                ';
            $i++;
        }
    }
    ?>
</body>