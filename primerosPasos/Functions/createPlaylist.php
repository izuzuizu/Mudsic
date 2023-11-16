<?php 
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    if (isset($_POST["create"])) {
        // $data = json_decode(file_get_contents('php://input'), true);
        $name = $_POST['name'];
        $desc = $_POST['desc'];
        // $img = $_POST['img'];
        $img = '';
        $userId = 1;
        $sql = "INSERT INTO playlists (nombre, descripcion, imagen, usuarios_id) VALUES ('$name','$desc', '$img','$userId')";
        $artistas = mysqli_query($conexion, $sql);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    print_r($artistas);
        echo 'nombre: '.$name.',  desc:'.$desc.'';  
    ?>
</body>
</html>