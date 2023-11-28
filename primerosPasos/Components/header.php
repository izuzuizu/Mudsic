<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <header>
        <div class="leftH">
            <div class="logo">
                <label>MUDSIC</label>
            </div>
        </div>
        <div class="rightH">
            <div class="searchCont">
                <input type="search" name="" id="">
                <img src="imagenes/magnifying-glass-solid.svg" alt="" srcset="">
            </div>
            <div class="profile" onclick="abrirConfig()">
                <img src="imagenes/user-solid.svg">
                <input type="checkbox" name="" id="profile" style="display: none;">
            </div>
            <div class="config" id="profileConfig">
                <label for=""><a href="header.php?cambiar_nombre">Modificar nombre</a></label>
                <label for=""><a href="../recuperarPass.php?modificar=true">Modificar contraseña</a></label>
                <div class="separador"></div>
                <label class="logOut" for=""><a href="header.php?salir=true">Cerrar Sesión</a></label>
            </div>
        </div>
    
</header>
<script style="display: none;">
   function abrirConfig() {
        var checkbox = document.getElementById("profile");
        checkbox.checked = !checkbox.checked;
        aparecerConfig();
    }

    function aparecerConfig() {
        var config = document.getElementById("profileConfig");
        var checkbox = document.getElementById("profile");

        // Si el checkbox está marcado, establece la opacidad en 1, de lo contrario, en 0.5
        config.style.display = checkbox.checked ? "flex" : "none";
         
    }
    document.addEventListener('click', function(event) {
        if (event.target === checkbox) {
        }else{
            config.style.display = 'none'
        }
    });   
</script>

<?php

include("../Functions/conexion.php");
session_start();

$id = $_SESSION['userId'];

$sql= "SELECT * FROM usuarios WHERE ID_u='$id'";
$datos=mysqli_query($conexion, $sql);
$usuarios=mysqli_fetch_assoc($datos);

$nombre = $_SESSION['user'];
$mail = $usuarios["Email_u"];

if(isset($_GET["cambiar_nombre"])) {
    echo '<form action="" method="post">
            <label>nuevo nombre</label>
            <input type="text" name="nombre2">
            <input type="submit" value="cambiar" name="cambiar">
          </form>';

    if(isset($_POST["cambiar"])) {        
        $nombre2 = $_POST["nombre2"];
        $sql = "UPDATE usuarios SET Nbr_u = '$nombre2' WHERE Email_u = '$mail'";
        $datos=mysqli_query($conexion, $sql) ? print("<script>alert('cambiado'); window.location = 'header.php'</script>"): print('error al borrar');

    }
}

if(isset($_GET["salir"])) {
    session_destroy();
    header('Location: ../index.php');
}
?>

</body>
</html>
