<<<<<<< HEAD
<<<<<<< HEAD

    <?php
=======
<?php
>>>>>>> main
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
        session_destroy();
        // header("location: index.php");
    }
    
if(isset($_GET["salir"])) {
    // session_destroy();
    header('Location: index.php');
}
    ?>
<<<<<<< HEAD
=======
>>>>>>> Ian
=======
<style>
    .container {
    width: 100%;
    height: 100%;
    background-color: rgb(59, 59, 59);
    position: fixed;
    z-index: 10;
    padding-top: 5px;
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
        height: 80%;
        width: 100%;
        align-items: center;
        justify-content: space-around;
        padding: 15px 20px;
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
    padding-top: 4%;
    }
    .cont .row{
        width: 100%;
        height: 320px;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 20px;
    }
    .cont h2{
        width: 100%;
        height: 46px;    
        padding: 5px 45px;
        text-shadow: 1px 1px 7px black;
    }
    .cont .elementos{        
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
    .cont .elemento{
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
    .cont .elemento img{
        width: 180px;
        height: 180px;
        /* min-width: 180px; */
        min-height: 180px;
        object-fit: cover;
        padding: 7px;
    }
    .cont .elemento .text{
        display: flex;
        align-items: center;
        flex-direction: column;
        text-align: center;
        justify-content: center;    
        height: 100%;
        width: 100%;
    }
    .cont .elemento label#nombre, p#name, p.name{
        font-size: 1rem;
        width: 90%;
        line-height: 15px;
        text-align: center;    
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        -webkit-line-clamp: 2
    }
    .cont .elemento label#autor, p#artist, .generos{
        font-size: 0.7rem;
        margin-top: 2px;
        display: block;
        max-height: 1em; /* Ajusta la altura máxima según tus necesidades */
        overflow: hidden;
    }
    .cont .biblioteca{
        display: grid;
    grid-template-columns: repeat(5, 1fr);
    grid-template-rows: auto;
    gap: 15px;
    align-items: center;
    justify-items: center;
    justify-content: center;
    padding: 20px 20px 40px 20px;
    overflow-x: hidden;        
    overflow-y: scroll;
    }
    .cont h1{
        padding: 10px 30px
    }
    .cont .biblioteca .elemento{
        width: 210px;
        height: 227px;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        align-items: center;
        padding: 7px 0 2px 0;
        margin: 5px 5px;
        background-color: rgb(37 37 37);
        box-shadow: 0px 0px 5px 2px rgb(12 12 12 / 87%);
    }

    #contextMenu{
        display: none; 
        position: absolute;
    z-index: 10000000000;
    width: auto;
    height: auto;
    background-color: #252525;
    padding: 6px;
    color: white;
    box-shadow: 1px 1px 25px #0000008c;
    }
    #contextMenu p{
        padding: 3px 8px;
    height: 27px;
    width: 200px;
    text-transform: capitalize;
    font-size: 0.8rem;
    margin: 4px 0;
    border-bottom: 1px solid gray;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    }
    #contextMenu p:hover{
        background-color: #343434;
    }
</style>
>>>>>>> main
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<<<<<<< HEAD
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mudsic - Home</title>
<link rel="stylesheet" href="estilos/player.css">

  <audio id="preview" style="display: none;">
    <source src ="https://drive.google.com/uc?id=1HR2P7oxS973v41BvM-yag9PkqOn4T68C" type ="audio/mpeg" preload="auto">
  </audio>
</head>
<body>
    <div id="contextMenu">
        <p class="option" id="next">Reproducir a continuacion</li>
        <p class="option" id="row">agregar a la fila</p>
        <p class="option" id="initRadio">Iniciar Radio</p>
        <!-- <p class="option" id="addRadio">Agregar Radio</p> -->
        <p class="option" id="like">Me Gusta</p>
        <p class="option" id="emotion">Emocion ></p>
        <!-- <p class="option" id="addLibrary">Agregar a Biblioteca</p> -->
        <p class="option" id="addToPlaylist">Agregar a Playlist ></p>
        <p class="option" id="goToArtist">Ir al Artista</p>
        <p class="option" id="goToAlbum">Ir al Album</p>
        <!-- <li id="dele">eliminar de la fila</li> -->
    </div>
    <div style="display: none" id="resultsBd"></div>
    <div id="contextMenu2" style="display: none; position: absolute; z-index:12">
    </div>
    <?php
        include('./Sections/nav.php')
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
                        <img src="imagenes/house-solid.svg" alt="home">
                </label>
                <label id="Nemociones">
                    <img src="imagenes/heart-solid.svg" alt="favs" srcset="">
                </label>
                <label id="Nhistorial">
                    <img src="imagenes/clock-rotate-left-solid.svg" alt="history" srcset="">
                </label>
                <label id="Nplaylists">
                    <img src="imagenes/list-solid.svg" alt="lists" srcset="">
                </label>
            </nav>            
        </aside>
    <div style="height: 4%; width:100%" ></div>

        <div class="cont" id="containerSec"></div>        
    </div>    
    <div class="reproductor">
        <?php
            include('./Sections/player.html')
        ?>
    </div>
    <script src="./Functions/main.js"></script>
</body>
<<<<<<< HEAD
</html>
=======
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="estilos/home.css">
    <link rel="stylesheet" href="estilos/header.css">
    <link rel="stylesheet" href="estilos/aside.css">
    <link rel="stylesheet" href="estilos/playerMinimized.css">
    <link rel="stylesheet" href="estilos/container.css">

</head>
<body>
    <?php     
        include 'components/header.php';
        include 'components/container.php';
        include 'components/playerMinimized.php';        
    ?>
    <script src="./Functions/navFunction.js"></script>
    <script style="display: none;">
        let siguiente = document.getElementById('siguiente')
        let timee = document.getElementById('time')
        let canciones = []
        var musica = document.getElementById("actual");
        let time = document.getElementById("tiempo")
        let reproducido = document.getElementById('reproducido')
        let duration = musica.duration
        let volumen = document.getElementById('volumen') 
        var rango = document.getElementById("barraDeProgreso")
        let clickRango = false
        let todo = document.getElementById('todo');
        let cancionActual = 0;
        let clickVolumen = false
        let form = document.getElementById("reaccion");
        let emocion = document.getElementById('emotion')
        let song = document.getElementById('song')
        let songName = document.getElementById('nombreCancion')
        let artistName = document.getElementById('artistaCancion')
        let imagenSong = document.getElementById('imagenCancion')
        time.innerHTML = "00:00"
        reproducido.innerHTML = "00:00"
        window.addEventListener('keydown', function (event) {
            // El parámetro del evento es del tipo KeyboardEvent
            switch (event.key) {
            case `ArrowLeft`:
                retroceder()
                break;
            
                case `ArrowRight`:
                avanzar()
                break;
                
                case `ArrowUp`:
                volumenAlto()
                break;
            
                case `ArrowDown`:
                volumenBajo()
                break;
                case ` `:
                if (musica.paused) {
                    if (document.activeElement.id == 'busqueda') {

                    }else{
                    reproducir()
                    }
                }else{
                    reproducir()
                }
                break;
            
            default:
                break;
            }
        });
        async function reaccionar() {
        let boton = document.getElementById('reaccionB')
        emocion.value = 1
        song.value= canciones[cancionActual].nombre
        console.log('subiendo reaccion: '+emocion.value+' de '+song.value)
        // Enviar los datos del formulario mediante AJAX
        let formData = new FormData(form);
        let queryParams = new URLSearchParams(formData).toString();
        let response = await fetch(`../primerosPasos/Functions/reaction.php?${queryParams}`, {
            method: 'GET'
        });
        }
        function reproducir () {
        let boton = document.getElementById('play-pause')
        let PP = document.getElementById('PP')
            if (musica.paused) {
            musica.play();
            
            boton.checked= true
            }else{  
            musica.pause()
            boton.checked= false
            }
            if (boton.checked == true) {
            PP.src="../primerosPasos/imagenes/play.png" 
            }else{
            PP.src="../primerosPasos/imagenes/pause.png" 
            }
        }
        function pausar() {
        musica.pause();
        }
        function parar () {
        musica.load();
        }
        function retroceder() {
        musica.currentTime -= 2;
        }
        function avanzar() {
        musica.currentTime += 2;
        }
        function volumenAlto () {
        if (musica.volume+0.1>=1) {
        }else{
        musica.volume+=0.1;
        }
        }
        function volumenBajo () {
        if (musica.volume-0.1<=0) {
        }else{
            musica.volume-=0.1;
        }
        }
        function abrirVolumen() {
        volumen.style.display = 'block' //esto se cumple cuando se toca el boton que abre el input rango del volumen
        }
        function repetir() {
        console.log(musica.played)
        let loop = document.getElementById('repetir')
            if (musica.loop == true) {
            loop.style.backgroundColor = '#efefef'
            musica.loop = false
            }else{
            musica.loop = true
            loop.style.backgroundColor = '#80c6ff'
            }
        }
        clickRango = false
        volumen.addEventListener('click',
        function a() {
        clickVolumen= true
        }
        )
        volumen.addEventListener('mouseup',
        function a() {
        clickVolumen= false
        }
        )
        rango.addEventListener('click',
        function() {
            clickRango = true
            }
        )
        async function agregarALaFila(url, imagen, nombre, artista, duracion, album) {
        let cancion = {
            url: url,
            imagen: imagen,
            nombre: nombre,
            artista: artista,
            album: album,
            duracion: duracion
        };
        canciones.push(cancion);
        }
        async function nuevaCancion(url, imagen, nombre, artista, duracion, album) {
        let cancion = {
            url: url,
            imagen: imagen,
            nombre: nombre,
            artista: artista,
            album: album,
            duracion: duracion
        };
        canciones.push(cancion);
        cancionActual = canciones.length-1
        reproducir()
        actualizar()
        }
        async function siguienteCancion(url, imagen, nombre, artista, duracion, album) {
        let cancion = {
            url: url,
            imagen: imagen,
            nombre: nombre,
            artista: artista,
            album: album,
            duracion: duracion
        };
        canciones.splice((cancionActual+1), 0 , cancion);
        actualizar()
        }
        async function reproducirSiguienteCancion() {
        console.log(canciones)
        cancionActual++;
        if (cancionActual > (canciones.length-1)) {
            cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
        }  
        musica.src=canciones[cancionActual].url
        musica.load();
        reproducir()
        actualizar()
        }
        function actualizar() {
        imagenSong.src = canciones[cancionActual].imagen
        songName.innerHTML = canciones[cancionActual].nombre
        artistName.innerHTML = canciones[cancionActual].artista
        
        
        navigator.mediaSession.metadata = new MediaMetadata({
            title: canciones[cancionActual].nombre,
            artist: canciones[cancionActual].artista,
            album: canciones[cancionActual].album,
            artwork: [
            { src: canciones[cancionActual].imagen, sizes: '512x512', type: 'image/jpeg' }
            ]
        });
        }
        function reproducirAnteriorCancion() {
        if (musica.currentTime<5) {
            
        if (cancionActual>0) {
        cancionActual= cancionActual-1;
        }
        }
        
        if (cancionActual > canciones.length) {
            cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
        }
        musica.src=canciones[cancionActual].url

        // musica.innerHTML = `
        // <source src ="${canciones[cancionActual].url}" type ="audio/mpeg" preload="auto">
        // `
        musica.load();
        reproducir()
        actualizar()
        }
        musica.addEventListener('ended', async function() {
        await reproducirSiguienteCancion();
        await interaccion('Cancion', canciones[cancionActual].nombre)
        actualizar()
        });
        musica.ontimeupdate = function() {
        actualizar()
        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('play', function() {
            reproducir()
            });
        }
        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('pause', function() {
            reproducir()
            });
        }

        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('seekforward', function() {
            avanzar()
            });
        }
        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('seekbackward', function() {
            retroceder()
            });
        }
        if (canciones.length >0) {
        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('nexttrack', function() {
            reproducirSiguienteCancion()
            actualizar()
            });
        }
        if ('mediaSession' in navigator) {
            navigator.mediaSession.setActionHandler('previoustrack', function() {
            reproducirAnteriorCancion()
            actualizar()
            });
        }
            
        }
        

            navigator.mediaSession.metadata = new MediaMetadata({
            title: canciones[cancionActual].nombre,
            artist: canciones[cancionActual].artista,
            album: canciones[cancionActual].album,
            artwork: [
                { src: canciones[cancionActual].imagen, sizes: '512x512', type: 'image/jpeg' }
            ]
            });
        let segundos = Math.floor(musica.currentTime%60)
        let minutos = Math.floor(musica.currentTime/60)
        let segundoss
        let minutoss 
            
        rango.addEventListener('click',
            function() {
                clickRango = true
            }
        )
        rango.addEventListener('mouseup', function() {
            clickRango = false
        });

        if (clickRango==true) {
            musica.currentTime = rango.value;
            clickRango=false
        }else{
        rango.value = musica.currentTime;
        }

            if (segundos.toString().length == 1) {
            segundoss = "0"+segundos
            }else{
            segundoss = segundos
            }
            if (minutos.toString().length == 1) {
            minutoss = "0"+minutos
            }else{
            minutoss = minutos
            }
        if (minutoss===undefined) {
            reproducido.innerHTML = `00:00`
        }

        reproducido.innerHTML = `${minutoss}:${segundoss}`
        rango.max = Math.floor(musica.duration)
        minutos = musica.duration/60
        minutos = Math.floor(minutos)
        time.innerHTML = minutos
        seconds = musica.duration%60
        if (minutos.toString().length == 1) {
            minutos = "0"+time.innerHTML
        }else{
            minutos = time.innerHTML
        }
        minutos = `${minutos}:${Math.floor(seconds)}`
        time.innerHTML = minutos
        if (clickVolumen == true) {
            musica.volume= (volumen.value/100)
        }
        rango.addEventListener('click', function(event) {
            musica.currentTime = rango.value
        });
        if (isNaN(seconds)) {
            time.innerHTML = `00:00`
        }
        };
    </script>
</body>
</html>
>>>>>>> Ian
=======
</html>
>>>>>>> main
