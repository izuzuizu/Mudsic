<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    include('/xampp/htdocs/Mudsic/Assets/connection.php')
    ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reproductor de Música</title>
  <audio id="preview" style="display: none;">
    <source src ="https://drive.google.com/uc?id=1HR2P7oxS973v41BvM-yag9PkqOn4T68C" type ="audio/mpeg" preload="auto">
  </audio>
</head>
<body>
    
    <form id="interaccion" action="Assets/interaccion.php" method="get" style="display:none">
      <input type="time" name="time" id="tiempoAccion">
      <input type="text" name="action" id="accion">
      <input type="submit" value="ok">
    </form>
    <div class="navegador">
        <a href="" id="Iindex">
            <img  src="/Mudsic/imgs/logo.png" alt="">
        </a>
        <div id="buscador">
            <input type="search" name="" id="busqueda">
            <button id="Bbuscador">
                <img src="/Mudsic/Assets/iconos/search_icon.png" width="25px" height="25px">
            </button>
        </div>
        <ul>
            <li><a href="" id="Nindex">Inicio</a></li>
            <li><a href="" id="Nbiblioteca">Biblioteca</a></li>
            <li><a href="" id="Nemociones">Emociones</a></li>
            <li><a href="" id="Nartistas">Artistas</a></li>
            <li><a href="" id="Nplaylists">Listas</a></li>
        </ul>
    </div>
    <div class="contenido">
        <?php
            include('Assets/index.php')
        ?>
    </div>
    <div class="reproductor">
        <?php
            include('assets/audioPlayer/index.php')
        ?>
    </div>
    <script src="main.js"></script>
</body>
</html>
