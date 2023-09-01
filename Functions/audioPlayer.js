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
let imagenSong = document.getElementById('imagenCancion')
time.innerHTML = "00:00"
reproducido.innerHTML = "00:00"
todo.addEventListener('keydown', function (event) {
    // El parámetro del evento es del tipo KeyboardEvent
    // console.log(event.key);
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
          reproducir()
        break;
    
      default:
        break;
    }
});
async function reaccion() {
emocion.value = 'Feliz'
song.value= songName.innerHTML
console.log('subiendo reaccion: '+emocion.value+' a las : ')
// Enviar los datos del formulario mediante AJAX
let formData = new FormData(form);
let queryParams = new URLSearchParams(formData).toString();
let response = await fetch(`Assets/reaccion.php?${queryParams}`, {
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
      PP.src="/Mudsic/Assets/Reproductor/iconos/play.png" 
    }else{
      PP.src="/Mudsic/Assets/Reproductor/iconos/pause.png" 
    }
}
function pausar() {
  musica.pause();
}
function parar () {
  musica.load();
}
function retroceder () {
  musica.currentTime -= 2;
}
function avanzar () {
  musica.currentTime += 2;
}
function volumenAlto () {
  musica.volume+=0.1;
}
function volumenBajo () {
  musica.volume-=0.1;
}
function abrirVolumen() {
  volumen.style.display = 'block' //esto se cumple cuando se toca el boton que abre el input rango del volumen
}
function repetir() {
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
function agregarALaFila(url, imagen, nombre, artista, duracion) {
  let cancion = {
    url: url,
    imagen: imagen,
    nombre: nombre,
    artista: artista,
    duracion: duracion
  };
  canciones.push(cancion);
  console.log(musica.played)
  if (musica.played==0) {
    reproducirSiguienteCancion()
  }
}
function reproducirSiguienteCancion() {
  console.log(canciones)
  cancionActual++;
  if (cancionActual >= canciones.length) {
    cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
  }
  console.log(canciones[cancionActual])
  
  musica.innerHTML = `
  <source src ="${canciones[cancionActual].url}" type ="audio/mpeg" preload="auto">
  `
  // musica.src = canciones[cancionActual];
  musica.load();
  musica.play();
  actualizar()
}
function actualizar() {
  imagenSong.src = canciones[cancionActual].imagen
  songName.innerHTML = canciones[cancionActual].nombre
  songName.innerHTML += '<br> - <br>'+canciones[cancionActual].artista
}
function reproducirAnteriorCancion() {
  console.log(canciones)
  cancionActual= cancionActual-1;
  if (cancionActual >= canciones.length) {
    cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
  }
  console.log(canciones[cancionActual])
  musica.innerHTML = `
  <source src ="${canciones[cancionActual]}" type ="audio/mpeg" preload="auto">
  `
  musica.load();
  musica.play();
  actualizar()
}
musica.addEventListener('ended', function() {
  reproducirSiguienteCancion();
});
musica.ontimeupdate = function() {
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
    console.log(rango.value)
  });
  if (isNaN(seconds)) {
    time.innerHTML = `00:00`
  }
};