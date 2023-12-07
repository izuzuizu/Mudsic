<?php

include("./Functions/conexion.php");
$id=0;
if (isset($_SESSION['userId'])) {
    $id = $_SESSION['userId'];
    $nombre = $_SESSION['user'];
}else{
    session_start();
}

$sql= "SELECT * FROM usuarios WHERE ID_u='$id'";
$datos=mysqli_query($conexion, $sql);
$usuarios=mysqli_fetch_assoc($datos);

$mail = $usuarios["Email_u"];

if(isset($_GET["cambiar_nombre"])) {
    echo '<form class="form" action="" method="post">
            <div class="contForm">
            <label>nuevo nombre</label>
            <input type="text" name="nombre2">
            <input type="submit" value="cambiar" name="cambiar">
            </div>
        </form>';

    if(isset($_POST["cambiar"])) {        
        $nombre2 = $_POST["nombre2"];
        $sql = "UPDATE usuarios SET Nbr_u = '$nombre2' WHERE Email_u = '$mail'";
        $datos=mysqli_query($conexion, $sql) ? print("<script>alert('cambiado'); window.location = 'nav.php'</script>"): print('error al borrar');

    }
}

?>

<style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
header{
    display: flex;
    flex-direction: row;
    width: 100%;
    height: 45px;
    background-color: rgb(34, 34, 34);
    justify-content: space-between;
    align-items: center;
    padding: 0px 75px;
    position: fixed;
    top: 0;
    z-index: 10000;
}
.leftH{
    width: 220px;
    height: 40px;
    display: flex;
    justify-content: start;
    text-align: center;
    align-items: center;
}
.logo label{
    font-size: 2.5rem;
    font-weight: 900;
    text-transform: uppercase;
    color: aliceblue;
}
.rightH{
    width: 270px;
    height: 32px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.searchCont{
    width: 220px;
    height: 30px;
    display: flex;
    background-color: aliceblue;
    border-radius: 250px;
    align-items: center;
    justify-content: center;
}
.searchCont input{
    width: 100%;
    height: 100%;
    border-style: none;
    border-radius: 250px 0 0 250px;
    padding: 7px;
}
.searchCont button{
    width: 50px;
    height: 30px;
    border-radius: 0 250px 250px 0;
    border-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
}
.searchCont img{
    width: 28px;
    height: 28px;
}
.profile{
    width: 30px;
    height: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: white;
    border-radius: 250px;
}
.profile img{
    width: 100%;
    height: 100%;
    padding-top: 2px;
    border-radius: 250px;
}
.config{
    position: absolute;
    width: 150px;
    height: 100px;
    top: 45px;
    right: 20px;
    flex-direction: column;
    display: flex;
    justify-content: space-evenly;
    background-color: rgb(48, 48, 48);
    padding: 8px;
    font-size: 0.9rem;
    display: none;
    box-shadow: 1px 1px 7px #0000006b;
    color: white;
}
.config .separador{
    width: 100%;
    height: 1px;
    background-color: black;
    margin: 5px 0;
}
.config label.logOut{
    text-align: center;
    font-size: 1rem;
    justify-content: center;
    padding: 5px;
}
.config label.logOut:hover{
    background-color: gray;
}
.form{
    position: absolute;
    width: 100%;
    height: 100vh;
    z-index: 1000000000000000000000000000000;
    background-color: rgb(28, 28, 28);
    display: flex;
    justify-content: center;
    align-items: center;
}
.contForm{
    width: 600px;
    height: 400px;
    background-color: rgb(48, 48, 48);
    
    box-shadow: 1px 1px 40px #0e0e0e;
}
</style>
<header>
    <div class="leftH">
        <div class="logo">
            <label>MUDSIC</label>
        </div>
    </div>
    <div class="rightH">
        <div class="searchCont" id="busqueda">
            <input type="search" name="" id="busquedaText">
            <button id="Bbuscador">
                <img src="../primerosPasos/imagenes/search_icon.png" width="25px" height="25px">
            </button>
        </div>
        <div class="profile" onclick="abrirConfig()">
            <img src="./imagenes/user-solid.svg">
            <input type="checkbox" name="" id="profile" style="display: none;">
        </div>
        <div class="config" id="profileConfig">
            <label for=""><a href="home.php?cambiar_nombre">Modificar nombre</a></label>
            <label for=""><a href="recuperarPass.php?modificar=true">Modificar contraseña</a></label>
            <div class="separador"></div>
            <label class="logOut" for=""><a href="home.php?salir=true">Cerrar Sesión</a></label>
        </div>
    </div>
</header>
<script style="display: none;">
    var checkbox = document.getElementById("profile");
    var config = document.getElementById("profileConfig");
function abrirConfig() {
    checkbox.checked = !checkbox.checked;
    aparecerConfig();
}

function aparecerConfig() {
    // var checkbox = document.getElementById("profile");

    // Si el checkbox está marcado, establece la opacidad en 1, de lo contrario, en 0.5
    config.style.display = checkbox.checked ? "flex" : "none";
     
}
// document.addEventListener('click', function(event) {
//     if (event.target === checkbox) {
//     }else{
//         config.style.display = 'none'
//     }
// });
</script>
