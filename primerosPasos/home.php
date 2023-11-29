<?php
    include('./Functions/conexion.php');
    session_start();
    if (isset($_SESSION["userId"])) {
        $stmt = mysqli_prepare($conexion, "SELECT * from usuarios Where ID_u = ?");
        mysqli_stmt_bind_param($stmt, "s", $_SESSION["userId"]);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        while ($row = $result->fetch_assoc()) {
            // echo $row['your_column_name'];
            // echo $row['ID_u'];
        }
    }else{
        session_abort();
        // header("location: index.php");
    }
    ?>
<style>
    .container {
    width: 100%;
    height: 100%;
    background-color: rgb(59, 59, 59);
    position: fixed;
    z-index: 10;
    padding-top: 45px;
    padding-bottom: 45px;
    display: flex;
    }
    .contenido{
        width: 100%;
    }
    .seccion {
        width: 40vw;
        height: 60%;    
    }

    #contSeccion2, #contSeccion3, #contSeccion4{
        display: none;
    }
    aside{
    display: flex;
    flex-direction: column;
    width: 4vw;
    height: 100%;
    background-color: rgb(41, 41, 41);
    justify-content: center;
    align-items: center;
    text-align: center;
    align-content: center;
    padding: 150px 6px;        
    }
    aside nav{
        display: flex;
        flex-direction: column;
        height: 60%;
        width: 100%;
        align-items: center;
        justify-content: space-around;
        padding: 20px 10px;
        border-radius: 10px;
        background-color: aliceblue;

    }
    aside nav input{
        display: none;
    }
    aside nav img{
        width: 30px;
        height: 30px;
    }
    aside nav li{
        z-index: 1000000000000000000000000000000000000000;
    }
    .cont{    
    min-height: 86vh;
    min-width: 97vw;
    max-height: 100%;    
    overflow-y: scroll;
    overflow-x: none;
    background-color: rgba(41, 41, 41, 0.793);
    color: white;
    display: flex;
    flex-direction: column;
    padding-top: 12px;
    }
    .cont .row{
        width: 100%;
        height: 320px;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 20px;
    }
    .cont .row h2{
        width: 100%;
        height: 46px;    
        padding: 5px 45px;
        text-shadow: 1px 1px 7px black;
    }
    .cont .row .elementos{        
        max-width: 95%;         
        height: 290px;
        display: flex;
        justify-content: flex-start;
        align-items: start;
        flex-direction: row;        
        overflow-x: scroll;        
        overflow-y: hidden;
    }
    ::-webkit-scrollbar {
        width: 12px;               /* width of the entire scrollbar */
    }  
    ::-webkit-scrollbar-track {
        background: rgba(27, 27, 27, 0);
        
    }  
    ::-webkit-scrollbar-thumb {
        background-color: rgb(99, 99, 99);    /* color of the scroll thumb */
        border-radius: 20px;       /* roundness of the scroll thumb */
        border: 4px solid rgb(46, 46, 46);
    }
    .cont .row .elementos .elemento{
        width: 238px;
        height: 250px;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;
        padding: 7px 0 2px 0;
        margin: 5px 5px;
        background-color: rgb(37 37 37);
        box-shadow: 0px 0px 5px 2px rgb(12 12 12 / 87%);
    }
    .cont .row .elementos .elemento img{
        width: 180px;
        height: 180px;
        /* min-width: 180px; */
        min-height: 180px;
        object-fit: cover;
        padding: 7px;
    }
    .cont .row .elementos .elemento .text{
        display: flex;
        align-items: center;
        flex-direction: column;
        text-align: center;
        justify-content: center;    
        height: 100%;
        width: 100%;
    }
    .cont .row .elementos .elemento label#nombre{
        font-size: 1rem;
        width: 90%;
        line-height: 15px;
        text-align: center;    
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        -webkit-line-clamp: 2
    }
    .cont .row .elementos .elemento label#autor{
        font-size: 0.7rem;
        margin-top: 2px;
        display: block;
        max-height: 1em; /* Ajusta la altura máxima según tus necesidades */
        overflow: hidden;
    }
</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mudsic - Home</title>
<link rel="stylesheet" href="estilos/player.css">

  <audio id="preview" style="display: none;">
    <source src ="https://drive.google.com/uc?id=1HR2P7oxS973v41BvM-yag9PkqOn4T68C" type ="audio/mpeg" preload="auto">
  </audio>
</head>
<body>
    <div id="contextMenu" style="display: none; position: absolute;">
        <p class="option" id="next">Reproducir a continuacion</li>
        <p class="option" id="row">agregar a la fila</p>
        <p class="option" id="initRadio">Iniciar Radio</p>
        <p class="option" id="addRadio">Agregar Radio</p>
        <p class="option" id="like">Me Gusta</p>
        <p class="option" id="emotion">Emocion ></p>
        <p class="option" id="addLibrary">Agregar a Biblioteca</p>
        <p class="option" id="addToPlaylist">Agregar a Playlist ></p>
        <!-- <li id="dele">eliminar de la fila</li> -->
    </div>
    <?php
        include('./Sections/nav.html')
    ?>
    <div class="container">
        <aside>        
            <nav>
                <!-- <ul>
                    <li><a href="" id="Nindex">Inicio</a></li>
                    <li><a href="" id="Nbiblioteca">Biblioteca</a></li>
                    <li><a href="" id="Nemociones">Emociones</a></li>
                    <li><a href="" id="Nhistorial">Historial</a></li>
                    <li><a href="" id="Nplaylists">Listas</a></li>
                </ul> -->
                <label id="Nindex">
                        <img src="../primerosPasos/imagenes/house-solid.svg" alt="home">
                </label>
                <label id="Nemociones">
                    <img src="../primerosPasos/imagenes/heart-solid.svg" alt="favs" srcset="">
                </label>
                <label id="Nhistorial">
                    <img src="../primerosPasos/imagenes/clock-rotate-left-solid (1).svg" alt="history" srcset="">
                </label>
                <label id="Nplaylists">
                    <img src="../primerosPasos/imagenes/list-solid.svg" alt="lists" srcset="">
                </label>
            </nav>            
        </aside>
        <div class="contenido" id="containerSec"></div>        
    </div>    
    <div class="reproductor">
        <?php
            include('./Sections/player.html')
        ?>
    </div>
    <script src="./Functions/main.js"></script>
</body>
</html>