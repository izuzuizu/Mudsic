<?php
include("./Functions/conexion.php");
session_start();
    if (isset($_SESSION['userId'])) {
        $imgUser = $_SESSION['img'];
    }else{
        session_destroy();
    }
    if (isset($_GET['salir'])) {
        session_destroy();
        header('Location: index.php');
    }
    if (isset($_POST['genre1']) && isset($_POST['genre2']) && isset($_POST['genre3']) && isset($_POST['genre4']) &&isset($_POST['song1']) && isset($_POST['song2']) && isset($_POST['song3']) && isset($_POST['song4']) && isset($_POST['artist1']) && isset($_POST['artist2']) && isset($_POST['artist3']) && isset($_POST['artist4']) && isset($_POST['album1']) && isset($_POST['album2']) && isset($_POST['album3']) && isset($_POST['album4'])) {
        // $sql = "INSERT INTO usuarios (Nbr_u, Pass_u, Email_u, Img_u, token) VALUES ('$user', '$contrasenia', '$email', '$foto', '$token')";
        // $registrar= mysqli_query($conexion, $sql)? print("<script>console.log('usuario creado');</script>"): print('error al crear');
        // aca se tiene que hacer la subida a la base de datos
        header('location: home.html');
    }
?>
<div id="contSeccion1" class="seccion">
    <div class="cont">      
    </div>
    <script src="./Functions/gustos.js"></script>
</div>

<link rel="stylesheet" href="./estilos/gustos.css">