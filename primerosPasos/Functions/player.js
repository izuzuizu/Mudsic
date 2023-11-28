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
          console.log(document.activeElement)
          if (musica.paused) {
            if (document.activeElement.id == 'busqueda' || document.activeElement.id == 'namePlaylist' || document.activeElement.id == 'descPlaylist') {

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
  console.log(emocion)
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