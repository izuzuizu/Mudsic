<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
<?php 
include('conexion.php');
    $usuario = 1    ;
    $emocionId = 1;
    $cancionId = $_GET['songId'];
    // $emocion = $_GET['emotion'];

    $sql = "SELECT * FROM emociones_usuarios WHERE usuario_id = '$usuario'";
    $artistas= mysqli_query($conexion, $sql);
    
    // while ($row = mysqli_fetch_assoc($artistas)) {
    //     $emocionId = $row['id'];
    // }        
    
    $sql2 = "INSERT INTO emociones_usuarios (usuario_id , cancion_id , emocion_id ) VALUES ('$usuario','$cancionId','$emocionId')";
    $artistas= mysqli_query($conexion, $sql2);
?>
    
</body>
</html>