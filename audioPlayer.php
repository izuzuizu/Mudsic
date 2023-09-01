<!DOCTYPE html>
<html id="todo">
  <link rel="stylesheet" href="/Mudsic2(viejo)/Assets/Reproductor/estilos.css">
  <body>
  <audio id="actual">
    <source src ="https://drive.google.com/uc?id=1HR2P7oxS973v41BvM-yag9PkqOn4T68C" type ="audio/mpeg" preload="auto">
  </audio>
  <audio id="siguiente">
    <source src ="" type ="audio/mpeg">
  </audio>
  <div class="container" align = "center">
    <img src="/" id="imagenCancion" style="width: 10%; height:10%" alt="">
    <p id="nombreCancion" ></p>
      <form action="Assets/interaccion.php" method="get" id="reaccion" style="display:none">
        <input type="text" name="cancion" id="song">
        <input type="text" name="emotion" id="emotion">
      </form>
      <input type="range" min="0" max="100" step="1" value="0" id="barraDeProgreso"/>
        <section id="time">
          <h1 id="tiempo">00:00</h1>
          <h1 id="reproducido">00:00</h1>
        </section>
      <input type="checkbox" name="" id="play-pause" style="display: none;">
      <button class="nav" onclick= "reproducir()">
        <img src="/Mudsic2(viejo)/Assets/Reproductor/iconos/play.png" width="40" height="40" id="PP" >
      </button>
      <button id="parar" class="nav" onclick= "parar()">
        <img src="/Mudsic2(viejo)/Assets/Reproductor/iconos/stop.png" width="40" height="40" >
      </button>
      <button id="retroceder" class="nav" onclick= "reproducirAnteriorCancion()">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Fast_forward_font_awesome.svg/2000px-Fast_forward_font_awesome.svg.png" width="40" height="40" style="  transform: rotate(180deg);">
      </button>
      <button id="avanzar" class="nav" onclick="reproducirSiguienteCancion()">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Fast_forward_font_awesome.svg/2000px-Fast_forward_font_awesome.svg.png" width="40" height="40">
      </button>
      <button id="reaccion" class="nav" onclick="reaccionar()">
          <img src="/Mudsic2(viejo)/Assets/Reproductor/iconos/like_icon.png" width="40" height="40" >
      </button>
      <button id="repetir" class="nav" onclick= "repetir()">
        <img src="/Mudsic2(viejo)/Assets/Reproductor/iconos/replay.png" width="40" height="40" />
      </button>
      <button id="Vol" onclick="abrirVolumen()">
        <input  type="range" min="0" max="100" step="1" value="100" id="volumen"/>
        <img src="Assets/Reproductor/iconos/volume_medium.png" width="40" height="40" >
      </button> 
    </div>
    <script src="Assets/Reproductor/reproductor.js"></script>
  </body>
</html>
