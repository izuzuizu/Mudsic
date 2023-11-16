<?php
    session_start();
    if (isset($_SESSION["userId"])){
        $usuario = $_SESSION['userId'];
    }else{
        session_abort();
    }
?>
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
    $i = 0;
    $usuario = 1;
    $tiempo = $_GET['time'];
    $name = $_GET['name'];
    $type = $_GET['type'];
    $sql = "INSERT INTO historial (nombre, tipo, horario, usuarioId) VALUES ('$name','$type','$tiempo','$usuario')";
    $artistas= mysqli_query($conexion, $sql);
    $sql = "SELECT * from biblioteca WHERE usuarios_id = '$usuario'";
    $library= mysqli_query($conexion, $sql);
    $sql = "SELECT COUNT(*) FROM biblioteca WHERE usuarios_id = '$usuario' AND tipo = '$type' AND nombre = '$name'";
    $a= mysqli_query($conexion, $sql);
    $a = mysqli_fetch_assoc($a);
    print($a['COUNT(*)']);
    if ($a['COUNT(*)'] == 0) {
        $sql = 'INSERT INTO biblioteca (tipo, nombre, usuarios_id, repeticion) VALUES ("'.$type.'","'.$name.'","'.$usuario.'",1)';
        $artistas = mysqli_query($conexion, $sql);
        echo 'ayuda';
    }
    while ($canta = mysqli_fetch_assoc($library)){
        if($canta["nombre"]== $name && $canta["tipo"] == $type && $canta["usuarios_id"] == $usuario) {
            $repe = $canta["repeticion"] + 1;
            $sql = "UPDATE biblioteca SET repeticion = '$repe' WHERE tipo = '$type' AND nombre = '$name' AND usuarios_id = '$usuario'";
            $artistas = mysqli_query($conexion, $sql);
        }
        $i += 1;
    }
?>
</body>
</html>