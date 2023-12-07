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
let emocion = document.getElementById('reaccionB')
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
          // event.preventDefault();
          window.scrollBy(0, 0);
        if (document.activeElement.id == 'busquedaText' || document.activeElement.id == 'namePlaylist' || document.activeElement.id == 'descPlaylist') {

          }else{
          // if (musica.paused) {

          //   }else{
          //     reproducir()
          //   }
            reproducir()
          }
        break;
    
      default:
        break;
    }
});
async function reaccionar() {
  let boton = document.getElementById('reaccionB')
  console.log(canciones[cancionActual])
  // song.value= canciones[cancionActual].nombre
  console.log('subiendo reaccion: emocion:'+emocion.value+' de '+canciones[cancionActual].nombre)
  // Enviar los datos del formulario mediante AJAX
  // let formData = new FormData(form);
  // let queryParams = new URLSearchParams(formData).toString();
  let response = await fetch(`../primerosPasos/Functions/reaction.php?emocionId=${emocion.value}&songId=${canciones[cancionActual].idBD}`, {
    method: 'GET'
  });
}
function disorderList(array) {
  return array.sort(() => Math.random() - 0.5);
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
  if (volumen.style.display == 'block') {
    volumen.style.display = 'none' //esto se cumple cuando se toca el boton que abre el input rango del volumen  
  } else {
    volumen.style.display = 'block' //esto se cumple cuando se toca el boton que abre el input rango del volumen  
  }
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
async function agregarALaFila(url, imagen, nombre, artista, duracion, album, idBD) {
  let cancion = {
    url: url,
    imagen: imagen,
    nombre: nombre,
    artista: artista,
    album: album,
    duracion: duracion,
    idBD:idBD
  };
  canciones.push(cancion);
}
async function nuevaCancion(url, imagen, nombre, artista, duracion, album, idBD) {
  let cancion = {
    url: url,
    imagen: imagen,
    nombre: nombre,
    artista: artista,
    album: album,
    duracion: duracion,
    idBD:idBD
  };
  canciones.push(cancion);
  cancionActual = canciones.length-1
  musica.src = canciones[cancionActual].url
  musica.volume=1;
  await musica.load()
  reproducir()
  actualizar()
  await interaccion('Cancion', canciones[cancionActual].nombre, canciones[cancionActual].idBD)

}
async function siguienteCancion(url, imagen, nombre, artista, duracion, album, idBD) {
  let cancion = {
    url: url,
    imagen: imagen,
    nombre: nombre,
    artista: artista,
    album: album,
    duracion: duracion,
    idBD:idBD
  };
  canciones.splice((cancionActual+1), 0 , cancion);
  actualizar()
}
async function reproducirSiguienteCancion() {
  console.log(canciones)
  cancionActual++;
  if (cancionActual > (canciones.length-1)) {
    cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
    canciones = disorderList(canciones)
  }else{
  }
  musica.src=canciones[cancionActual].url
  musica.load();
  reproducir()
  actualizar()
  await interaccion('Cancion', canciones[cancionActual].nombre, canciones[cancionActual].idBD)

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
async function reproducirAnteriorCancion() {
  if (musica.currentTime<5) {
    if (cancionActual>0) {
    cancionActual= cancionActual-1;
    }
  }
  if (cancionActual > canciones.length) {
    cancionActual = 0; // Reinicia al comienzo de la lista si llega al final
  }else{
    musica.src=canciones[cancionActual].url
    musica.load();
    reproducir()
    actualizar()
  await interaccion('Cancion', canciones[cancionActual].nombre, canciones[cancionActual].idBD)

  }
}
musica.addEventListener('ended', async function() {
  await reproducirSiguienteCancion();
  // await interaccion('Cancion', canciones[cancionActual].nombre, canciones[cancionActual].idBD)
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
  if (canciones.length >1) {
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
  seconds = Math.floor(seconds)
  if (minutos.toString().length == 1) {
    minutos = "0"+time.innerHTML
  }else{
    minutos = time.innerHTML
  }
  if (seconds.toString().length == 1) {
    seconds = "0"+seconds
  }else{
    seconds = seconds
  }
  minutos = `${minutos}:${seconds}`
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
    const emojisPositive = ['👍', '😍', '👍', '😈', '🤣', '😄', '🥳', '😴', '👹', '🚀'];
    const emojisNegative = ['👎', '🤮', '💔', '😭', '😡', '😭'];

    // Define el estado actual
    let currentState = 'positive'; // Puede ser 'positive' o 'negative'

    // Llama a la función para cargar inicialmente los emojis positivos
    updateEmojiList();

    function toggleLikeDislike() {
        // Obtiene el contenedor de emoji activo
        const activeEmojiContainer = document.querySelector('.emojiToggleContainer');

        // Cambia el estado y actualiza el contenedor de emoji activo
        currentState = currentState === 'positive' ? 'negative' : 'positive';
        updateActiveEmojiContainer(activeEmojiContainer);

        // Actualiza la lista de emojis en el menú
        updateEmojiList();
    }
    function updateActiveEmojiContainer(emojiContainer) {
        // Actualiza el contenido del contenedor de emoji según el estado actual
        emojiContainer.innerHTML = currentState === 'positive'
            ? `<div class="emojiToggleText activeEmoji">${emojisPositive[0]}</div><div class="emojiToggleText">${emojisNegative[0]}</div>`
            : `<div class="emojiToggleText">${emojisPositive[0]}</div><div class="emojiToggleText activeEmoji">${emojisNegative[0]}</div>`;
    }
    function updateEmojiList() {
        // Obtiene el contenedor de la lista de emojis
        const emojiListContainer = document.querySelector('.flatList');

        // Actualiza la lista de emojis según el estado actual
        const emojis = currentState === 'positive' ? emojisPositive : emojisNegative;

        // Crea el HTML para la lista de emojis
        const emojiListHTML = emojis.map(emoji => `<div class="item" onclick="handleItemClick('${emoji}')"><div class="itemEmoji">${emoji}</div></div>`).join('');

        // Actualiza el contenido del contenedor de la lista de emojis
        emojiListContainer.innerHTML = emojiListHTML;
    }
    function abrirReacciones() {
        var checkbox = document.getElementById("reactions");
        checkbox.checked = !checkbox.checked;
        openModal();
    }
    // Ejemplo de cómo usar la función en un botón o evento
    const toggleButton = document.getElementById('toggleButton');
    toggleButton.addEventListener('click', toggleLikeDislike);

    // function openModal() {
    //     // document.getElementById("reactionsCont").style.display = "flex";         
    //     // var botonReaccion = document.getElementById("reaccionB");
        
    // }
    function openModal() {
        var config = document.getElementById("reactionsCont");
        var checkbox = document.getElementById("reactions");

        // Si el checkbox está marcado, establece la opacidad en 1, de lo contrario, en 0.5
        config.style.display = checkbox.checked ? "flex" : "none";
         
    }
    document.addEventListener('click', function(event) {
        if (event.target === checkbox) {
        }else{
            config.style.display = 'none'
        }
    });
    var botonReaccion = document.getElementById("reaccionB");
    
    document.addEventListener('click', function(event) {
      console.log(event.target)
        if (event.target === botonReaccion) {
            document.getElementById("reactionsCont").style.display = 'none'
        }else{
            document.getElementById("reactionsCont").style.display = 'none'
        }
    });  
    function handleItemClick(item) {
        console.log(item);
        openModal();
  }
