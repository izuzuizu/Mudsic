let audioPlayer = document.getElementById('actual');
const contenido = document.querySelector('.contenido');
let cancionesData
let accessToken
let artistaId = ''
let datos
let nombreArtista
let cancionData
let actual
let link
let cancionesT = []
let intervalo
let intervalo2
let intervalo3
let intervalo4
let preview = document.getElementById('preview')
let busqueda = document.getElementById('busqueda')
busqueda.autocomplete = "on"
let history = [];
let eventAdded = false;
let currentIndex = history.length - 1;
let usuarioId=1
let genres = [
  "acoustic",
  "afrobeat",
  "alt-rock",
  "alternative",
  "ambient",
  "anime",
  "black-metal",
  "bluegrass",
  "blues",
  "bossanova",
  "brazil",
  "breakbeat",
  "british",
  "cantopop",
  "chicago-house",
  "children",
  "chill",
  "classical",
  "club",
  "comedy",
  "country",
  "dance",
  "dancehall",
  "death-metal",
  "deep-house",
  "detroit-techno",
  "disco",
  "disney",
  "drum-and-bass",
  "dub",
  "dubstep",
  "edm",
  "electro",
  "electronic",
  "emo",
  "folk",
  "forro",
  "french",
  "funk",
  "garage",
  "german",
  "gospel",
  "goth",
  "grindcore",
  "groove",
  "grunge",
  "guitar",
  "happy",
  "hard-rock",
  "hardcore",
  "hardstyle",
  "heavy-metal",
  "hip-hop",
  "holidays",
  "honky-tonk",
  "house",
  "idm",
  "indian",
  "indie",
  "indie-pop",
  "industrial",
  "iranian",
  "j-dance",
  "j-idol",
  "j-pop",
  "j-rock",
  "jazz",
  "k-pop",
  "kids",
  "latin",
  "latino",
  "malay",
  "mandopop",
  "metal",
  "metal-misc",
  "metalcore",
  "minimal-techno",
  "movies",
  "mpb",
  "new-age",
  "new-release",
  "opera",
  "pagode",
  "party",
  "philippines-opm",
  "piano",
  "pop",
  "pop-film",
  "post-dubstep",
  "power-pop",
  "progressive-house",
  "psych-rock",
  "punk",
  "punk-rock",
  "r-n-b",
  "rainy-day",
  "reggae",
  "reggaeton",
  "road-trip",
  "rock",
  "rock-n-roll",
  "rockabilly",
  "romance",
  "sad",
  "salsa",
  "samba",
  "sertanejo",
  "show-tunes",
  "singer-songwriter",
  "ska",
  "sleep",
  "songwriter",
  "soul",
  "soundtracks",
  "spanish",
  "study",
  "summer",
  "swedish",
  "synth-pop",
  "tango",
  "techno",
  "trance",
  "trip-hop",
  "turkish",
  "work-out",
  "world-music"
]
let orderPlaylist = []


async function getToken() {
    const clientId = 'eed31a43318f478ba48917070c9c3b37';
    const clientSecret = '3337a7d23626403399901e0f1e487a98';
    const params = new URLSearchParams();
    params.append('grant_type', 'client_credentials');
    params.append('client_id', clientId);
    params.append('client_secret', clientSecret);
    
    await fetch('https://accounts.spotify.com/api/token', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: params
    })
    
    
    .then(response => response.json())
    .then(data => {accessToken = data.access_token})
    .catch(error => console.error(error))
}
setInterval(async () => {
  await getToken();
}, 36000000);
async function getTopSongs(artistaId) {
  await getToken()
  const topTracksResponse = await fetch(`https://api.spotify.com/v1/artists/${artistaId}/top-tracks?market=AR`, {
      headers: {
        'Authorization': `Bearer ${accessToken}`
      }
    });
  const topTracksData = await topTracksResponse.json();
  return topTracksData
}
window.addEventListener('load', function() {
  buscar();
});
document.addEventListener('keydown', function(event) {
  if (event.code === ' ') {
    event.preventDefault();
    window.scrollBy(0, 0);
  }
});
function padTime(time) {
  let parts = time.split(':');
  let paddedParts = parts.map(part => part.padStart(2, '0'));
  return paddedParts.join(':');
}
async function addRow(cancion, artista, duracion, imagen, album) {
  //animacion de carga aca
  let cont = 0
  let resultado
  let repite
  // Clave de API de YouTube
  const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
  // Construye la consulta de búsqueda
  let consulta = `${cancion} ${artista} lyric`;
  // Codifica la consulta para usarla en una URL
  consulta = encodeURIComponent(consulta);
  // Construye la URL de la solicitud a la API de búsqueda de YouTube
  let url = `https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=${consulta}&key=${apiKey}`;
  // Realiza la solicitud a la API de búsqueda de YouTube
  let respuesta = await fetch(url);
  let datos = await respuesta.json();    
  // Verifica si se encontraron resultados
  if (datos.items.length > 0) {
      // Devuelve el ID del primer video encontrado
        let intervalo = setInterval(async () => {
        const url = `https://youtube-mp36.p.rapidapi.com/dl?id=${datos.items[0].id.videoId}`;
        const options = {
          method: 'GET',
          headers: {
            'X-RapidAPI-Key': '0da5fe62c2msh1ee3f8c081ec628p1b74d6jsnd14d82b9f8e0',
            'X-RapidAPI-Host': 'youtube-mp36.p.rapidapi.com'
          }
        };
        try {
          const response = await fetch(url, options);
          const result = await response.json();
          console.log(result);
          resultado = result;
        } catch (error) {
          console.error(error);
        }
        if (resultado.status == 'ok') {
        } else {
        }
        if (resultado.status == 'ok') {
          repite = false;
          // audioPlayer.volume=0;
          // audioPlayer.load()
          // audioPlayer.src = resultado.link
          // audioPlayer.load()
          // audioPlayer.volume=1;
          await agregarALaFila(resultado.link, imagen, cancion, artista, duracion, album);
          // duration = musica.duration
          if (duration == 'NaN' || duration == NaN || duration == 'infinity'|| duration == 'infinity') {
            duration = resultado.duration
          }else{
            setInterval(() => {
            duration = musica.duration
            }, 200);
          }
          duration = duracion
          await interaccion('Cancion:'+cancion)
          clearInterval(intervalo4);
          actualizar()
          let Breaccion = document.getElementById('reaccion')
          Breaccion.addEventListener('click',async function name() {
            let emociones = document.getElementById('emociones')
            emociones.style.display = 'block'
          })
          }else{
            console.log('esperando cancion')
            repite == true
          }
          if (cont>=5) {
            console.log(`siguiente api`)
            repite = false;
          }
          cont += 1
        }, 10000);
    setInterval(() => {
      if (repite == false) {
        clearInterval(intervalo)
      }
    }, 1000);
      // No se encontraron resultados
      null;
    } else {
      console.log('la cancion no se pudo cargar')
  }
}
async function cancionNext(cancion, artista, duracion, imagen, album) {//animacion de carga aca
  let cont = 0
  let resultado
  let repite
  
  // Clave de API de YouTube
  const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
  // Construye la consulta de búsqueda
  let consulta = `${cancion} ${artista} lyric`;
  // Codifica la consulta para usarla en una URL
  consulta = encodeURIComponent(consulta);
  // Construye la URL de la solicitud a la API de búsqueda de YouTube
  let url = `https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=${consulta}&key=${apiKey}`;
  // Realiza la solicitud a la API de búsqueda de YouTube
  let respuesta = await fetch(url);
  let datos = await respuesta.json();    
  // Verifica si se encontraron resultados
  if (datos.items.length > 0) {
      // Devuelve el ID del primer video encontrado
        let intervalo = setInterval(async () => {
        const url = `https://youtube-mp36.p.rapidapi.com/dl?id=${datos.items[0].id.videoId}`;
        const options = {
          method: 'GET',
          headers: {
            'X-RapidAPI-Key': '0da5fe62c2msh1ee3f8c081ec628p1b74d6jsnd14d82b9f8e0',
            'X-RapidAPI-Host': 'youtube-mp36.p.rapidapi.com'
          }
        };
        try {
          const response = await fetch(url, options);
          const result = await response.json();
          console.log(result);
          resultado = result;
        } catch (error) {
          console.error(error);
        }
        if (resultado.status == 'ok') {
          repite = false;
        } else {
          repite = true;
          resultado.status = false
        }
        if (resultado.status == 'ok') {
          await siguienteCancion(resultado.link, imagen, cancion, artista, duracion, album);
          // duration = duracion
          await interaccion('Cancion', cancion)
          clearInterval(intervalo4);
          actualizar()

          }else{
            console.log('esperando cancion')
            repite == true
          }
              if (cont>=5) {
                console.log(`siguiente api`)
                repite = false;
              }
                cont += 1
        }, 10000);
    setInterval(() => {
      if (repite == false) {
        clearInterval(intervalo)
      }
    }, 1000);
      // No se encontraron resultados
      null;
    } else {
      console.log('la cancion no se pudo cargar')
  }
}
async function cancionNew(Cancion, artista, cancionDur, imagen, album) {
    //animacion de carga aca
    let cont = 0
    let resultado
    let repite
    
    // Clave de API de YouTube
    const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
    // Construye la consulta de búsqueda
    let consulta = `${Cancion} ${artista} lyric`;
    // Codifica la consulta para usarla en una URL
    consulta = encodeURIComponent(consulta);
    // Construye la URL de la solicitud a la API de búsqueda de YouTube
    let url = `https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=${consulta}&key=${apiKey}`;
    // Realiza la solicitud a la API de búsqueda de YouTube
    let respuesta = await fetch(url);
    let datos = await respuesta.json();    
    // Verifica si se encontraron resultados
    if (datos.items.length > 0) {
        // Devuelve el ID del primer video encontrado
          let intervalo = setInterval(async () => {
          const url = `https://youtube-mp36.p.rapidapi.com/dl?id=${datos.items[0].id.videoId}`;
          const options = {
            method: 'GET',
            headers: {
              'X-RapidAPI-Key': '0da5fe62c2msh1ee3f8c081ec628p1b74d6jsnd14d82b9f8e0',
              'X-RapidAPI-Host': 'youtube-mp36.p.rapidapi.com'
            }
          };
          try {
            const response = await fetch(url, options);
            const result = await response.json();
            console.log(result);
            resultado = result;
          } catch (error) {
            console.error(error);
          }
          if (resultado.status == 'ok') {
            repite = false;
          } else {
            repite = true;
            resultado.status = false
          }
          if (resultado.status == 'ok') {
            audioPlayer.volume=0;
            audioPlayer.load()
            audioPlayer.src = resultado.link
            audioPlayer.load()
            audioPlayer.volume=1;
            await nuevaCancion(resultado.link, imagen, Cancion, artista, cancionDur, album);
            duration = musica.duration
            if (duration == 'NaN' || duration == NaN || duration == 'infinity'|| duration == 'infinity') {
              duration = resultado.duration
            }else{
              setInterval(() => {
              duration = musica.duration
              }, 200);
            }
            duration = cancionDur
            await interaccion('Cancion', Cancion) 
            clearInterval(intervalo4);
            actualizar()
            // await radioSpotify(artista, Cancion, )
            let Breaccion = document.getElementById('reaccionB')
            Breaccion.addEventListener('click',async function name() {
              let emociones = document.getElementById('emociones')
              emociones.style.display = 'block'
            })
            }else{
              console.log('esperando cancion')
              repite == true
            }
                if (cont>=5) {
                  console.log(`siguiente api`)
                  repite = false;
                }
                  cont += 1
          }, 10000);
      setInterval(() => {
        if (repite == false) {
          clearInterval(intervalo)
        }
      }, 1000);
        // No se encontraron resultados
        null;
      } else {
        console.log('la cancion no se pudo cargar')
    }
}
async function shazamLink(artistName, albumName, songName) {
  
}
// // Cargar contenido mediante AJAX
// async function cargarContenido(url) {
//     // const xhr = new XMLHttpRequest();
//     // xhr.open('GET', url, true);
//     // xhr.onreadystatechange = function() {
//     //     if (xhr.readyState === 4 && xhr.status === 200) {
//     //         contenido.innerHTML = xhr.responseText;
//     //     }
//     // };
//     // xhr.send();
//     async function getData(url) {
//       const response = await fetch(url);
//       const data = await response.text();
//       return data;
//     }
    
//     await getData(url).then(data => {
//         contenido.innerHTML = data;
//     }); 
    
// }
async function moveList() {
  var list = document.getElementById('sortable-list');
  // Función para manejar el evento 'dragover'
  function dragOverHandler(e) {
      e.preventDefault();
      e.dataTransfer.dropEffect = 'move';
  }
  // Función para manejar el evento 'dragstart'
  function dragStartHandler(e) {
    // Asegúrate de que estás seleccionando el elemento 'div' correcto
    var draggableElement = e.target.closest('.cancion');
    e.dataTransfer.setData('text/plain', draggableElement.id);
  }
  // Función para manejar el evento 'drop'
  function dropHandler(e) {
    e.preventDefault();
    var id = e.dataTransfer.getData('text/plain');
    var draggedElement = document.getElementById(id);
    // Asegúrate de que estás seleccionando el elemento 'div' correcto
    var dropTarget = e.target.closest('.cancion');
    if (draggedElement !== dropTarget) {
        var parentElement = dropTarget.parentElement;
        parentElement.insertBefore(draggedElement, dropTarget);
    }
  }
// Obtiene los elementos de la lista
var items = list.querySelectorAll('.cancion');
  for (var i = 0; i < items.length; i++) {
      var item = items[i];
      // item.setAttribute('id', 'cancion' + (i+1));
      // item.setAttribute('draggable', 'true');
      item.addEventListener('dragstart', dragStartHandler);
      item.addEventListener('dragover', dragOverHandler);
      item.addEventListener('drop', dropHandler);
      item.addEventListener('mouseover', ()=>{
          // Crea un array para almacenar el orden de los elementos
          var order = [];
          // Obtiene la lista
          var list = document.getElementById('sortable-list');
          // Obtiene los elementos de la lista
          var items = list.querySelectorAll('.cancion');
          // Recorre los elementos de la lista y añade su contenido al array
          for (var i = 0; i < items.length; i++) {
              order.push(items[i].id);
          }
          // Ahora, 'order' es un array que contiene el orden de los elementos
          console.log(order);
          orderPlaylist = order
      })

  }
}
async function cargarContenido(url) {
    // Agregar la URL al historial
    history.push(url);
    async function getData(url) {
      const response = await fetch(url);
      const data = await response.text();
      // console.log(data)
      return data;
    }
    
    await getData(url).then(data => {
        contenido.innerHTML = data;
    }); 
}
async function getInfo(artist, track) {
  // Primero, necesitas tu token de acceso. Asegúrate de reemplazar 'YOUR_ACCESS_TOKEN' con tu token real.
var accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiSW50ZWdyYXRpb25BY2Nlc3NUb2tlbiIsInZlcnNpb24iOiIxLjAiLCJpbnRlZ3JhdGlvbklkIjo3MTQsInVzZXJJZCI6NjEyNDQsImFjY2Vzc1Rva2VuU2VjcmV0IjoiYWU4ZjdlNjY1M2E0YzUwM2Q2MGJhNGIzMzg1ZmY5MTk4Y2IxMTdlNzgwNTYwMGM1YzZjYjdlNGEyZDIyYmU5MiIsImlhdCI6MTY5NDU2MzA5M30._KoZ4WoYOfPn3QVxIQU-ihzqoqRd9kxFLQYQkyVw9wU';
// Luego, define el nombre de la canción y el artista que te interesan.
var trackName = track; // Reemplaza esto con el nombre de la canción.
var artistName = artist; // Reemplaza esto con el nombre del artista.
var trackId ; // Reemplaza esto con el ID de la canción.

console.log('artista: '+ artistName+'song: '+trackName)
// Ahora, puedes hacer una solicitud a la API de Cyanite.ai para obtener información detallada de la canción.

fetch('https://api.cyanite.ai/graphql', {
    method: 'POST',
    headers: { 
        'Authorization' : 'Bearer ' + accessToken,
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({
        query: `
          query LibraryTracksQuery {
            libraryTracks(first: 10) {
              pageInfo {
                hasNextPage
              }
              edges {
                node {
                  id
          
                  audioAnalysisV6 {
                    __typename
                  }
                }
              }
            }
          }        
        `,
        variables: {
            first: 1,
            titleFilter: trackName
        }
    })
})
.then(response => response.json())
.then(data => {
      console.log(data)
})
.catch(error => console.error(error));// Luego, define el ID de la canción que te interesa.

// Ahora, puedes hacer una solicitud a la API de Cyanite.ai para obtener información detallada de la canción.
await fetch('https://api.cyanite.ai/graphql', {
    method: 'POST',
    headers: { 
        'Authorization' : 'Bearer ' + accessToken,
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({
        query: `
            query {
                track(id: "${trackId}") {
                    analysisV6 {
                        bpm
                    }
                }
            }
        `
    })
})
.then(response => response.json())
.then(data => {
    // Aquí, 'data' contiene la información devuelta por la API de Cyanite.ai.
    // Puedes procesar estos datos como prefieras. Por ejemplo, podrías imprimir los BPM de la canción:
    console.log('BPM: ' + data.data.track.analysisV6.bpm);
})
.catch(error => console.error(error));
} 
async function radio(artist, track, album) {
  let song = await getSong(artist, album, track)
  console.log(song)
  const API_KEY = '891747fbb8db61d34b853cabb9631574';  // Reemplaza esto con tu clave de API de Last.fm
  const url = `https://ws.audioscrobbler.com/2.0/?method=track.gettoptags&artist=${artist}&track=${track}&api_key=${API_KEY}&format=json`;
  let tags
  let cont=0
  try {
      const response = await fetch(url);
      const data = await response.json();
      tags = data.toptags.tag.map(tag => tag.name);
      console.log(tags)
  } catch (error) {
      console.error(error);
  }
    let genero = ''
    for (let index = 0; index < genres.length; index++) { 
      if(tags[cont]==genres[index]){
        genero= tags[cont]
      }
    }
    if (genero == '') {
      genero= tags[0]
    }
        // Primero, necesitas tu token de acceso. Asegúrate de reemplazar 'YOUR_ACCESS_TOKEN' con tu token real.
        // Luego, define el género que te interesa.
        // Ahora, puedes hacer una solicitud a la API de Spotify para obtener recomendaciones basadas en el género.
        await fetch('https://api.spotify.com/v1/recommendations?limit=100&seed_artists='+song.artists[0].id+'&seed_track='+song.id+'&seed_genres=' + genero, {
            method: 'GET',
            headers: { 'Authorization' : 'Bearer ' + accessToken }
        })
        .then(response => response.json())
        .then(data => {
            // Aquí, 'data' contiene las recomendaciones devueltas por la API de Spotify.
            // Puedes procesar estos datos como prefieras. Por ejemplo, podrías imprimir los nombres de las canciones recomendadas:
            console.log(data.tracks)
            return data.tracks
        })
          .catch(error => console.error(error));
}
async function contextMenuCancion(cancionName, artista, cancionDur, imagen, album, artistaIdSong) {
  let contextMenu = document.getElementById('contextMenu')
  contextMenuPressed = true
  let options = document.querySelectorAll('.option')
  contextMenu.style.display = 'block';
  contextMenu.style.width= '20%';
  contextMenu.style.backgroundColor = "green";
  contextMenu.style.left = event.pageX + 'px';
  contextMenu.style.top = event.pageY + 'px';
  options.forEach(function(option) {
    option.addEventListener('mouseenter', async function () {
      option.style.backgroundColor = "blue"
    })
    option.addEventListener('mouseleave', async function () {
      option.style.backgroundColor = 'green'
    })
    option.addEventListener('click',async function name(params) {
      switch (option.id) {
        case "next":
          await cancionNext(cancionName, artista, cancionDur, imagen, album);
        break;
        case "row":
          await addRow(cancionName, artista, cancionDur, imagen, album);
        break;
        case "initRadio":
          await cancionNew(cancionName, artista, cancionDur, imagen, album)
          break;
        case "addRadio":
          //recibir recomendacion
          // await radioSpotify(artista, "", cancionName)
          // artistaIdSong
          await radio(artista, cancionName, album)
          // .then(tags => console.log(tags));
          // await cancionNew(cancionName, artista, cancionDur, imagen, album)
          break;
        case "like":
          await reaccionar()
          break;
        case "addLibrary":
          break;
        default:
          break;
      }
          contextMenu.style.display = 'none'
    })
  })
}
window.addEventListener('click', function(event) {
  var esClickDentro = contextMenu.contains(event.target);
  if (!esClickDentro) {
      // Aquí va tu código para manejar cuando no se hace click en el div
      contextMenu.style.display = 'none'
  }
  if (contextMenu.style.display != 'none') {
    contextMenu.style.display = 'none'
  }
});
async function cancionesPreview() {
  setTimeout(() => {
  let cantCanciones = document.getElementById('canciones.length')
  intervalo = setInterval(function() {},2000)
  intervalo2 = setInterval(function() {},2000)
  for (let index = 1; index <= (cantCanciones.innerHTML); index++) {
  let artista = document.getElementById(`artist${index}`).innerHTML
  let cancionName = document.getElementById('name'+index).innerHTML
  let cancionDur = document.getElementById('dur'+index).innerHTML
  let imagen = document.getElementById('imgS'+index)
  if (imagen === null) {
  }else{
    imagen = imagen.src
  }
  let album = document.getElementById('albumSong'+index).innerHTML
  let artistaIdSong = document.getElementById('artistaIdSong'+index)
  if (artistaIdSong === null) {
  }else{
    artistaIdSong.innerHTML 
  }
  // await preview.load()
  let cancion = document.getElementById('cancion'+index)
    cancion.addEventListener('click', async function() {
      preview.src = cancion.getAttribute('value')
      clearInterval(intervalo);
      clearInterval(intervalo2);
      // audioPlayer.load()
      // preview.volume =0
      preview.play()
      intervalo4 = setInterval(()=> {
        
        if ((preview.volume+0.001)>=0.6) {
          }else{
            preview.volume+=0.001;
          }
          }, 10);
      await cancionNew(cancionName, artista, cancionDur, imagen, album)
    })
    cancion.addEventListener('contextmenu', async function(event) {
      event.preventDefault();
      await contextMenuCancion(cancionName, artista, cancionDur, imagen, album, artistaIdSong)
    });
    if (cancion.getAttribute('value') =='nulo') {
      cancion.addEventListener('mouseenter',function name() {
        console.log('no hay preview link')
      })
    }else{
      cancion.addEventListener('mouseenter', async function () {
      preview.src = cancion.getAttribute('value')
      preview.load()
      if (audioPlayer.paused) {
        clearInterval(intervalo);
        clearInterval(intervalo2);
        preview.volume=0;
        preview.play()
        intervalo = setInterval(function() {
            if (preview.volume>0.25) {
            }else{
              preview.volume+=0.001;
            }
      }, 15);
        if (typeof intervalo === 'number') {
                setTimeout(function() {
                    clearInterval(intervalo);
                    intervalo = null;
                }, 4500);
        } else {
        }
      
      }
      })
      cancion.addEventListener('mouseleave', async function name(params) {
      clearInterval(intervalo);
      clearInterval(intervalo2);
      intervalo2 = setInterval(function() {
        if ((preview.volume-0.01)<=0) {
          if (preview.volume-0.002<=0) {
          }else{
            preview.volume-=0.002
          }
        }else{
          preview.volume-=0.01;
        }
    }, 50);
    if (typeof intervalo2 === 'number') {

    setTimeout(function() {
        clearInterval(intervalo2);
        intervalo2 = null;
    }, 2000);
    }
      });
    }
  }
  
}, 200);
}
async function albumsPreview(album, i) {//con fallas
  // setTimeout(async () => {
  let albumNombre = document.getElementById(`albumName${i}`).innerHTML
  let nombreArtista = document.getElementById('artistaAlbum'+i).innerHTML
  console.log(album)

  let albumId = album.getAttribute('value')
      if (nombreArtista==null||nombreArtista=='Nulo'||nombreArtista==='undefined') {
        nombreArtista = document.getElementById('Artista')
      }
  // console.log(nombreArtista)
  console.log(album)
      let cantCancionesAlbum = document.getElementById('cantCancionesAlbum'+i)
      let songs = await getSongsFromAlbum(albumId);
      console.log(songs)
      album.addEventListener('mouseenter', async function() {
      var aleatorio = Math.floor(Math.random() * (songs.length - 0) + 0);
      console.log(aleatorio)
      let song = await getSong(nombreArtista, albumNombre, songs[aleatorio])
      console.log(song)
        if (song.preview_url == null  ) {
          console.log('sin preview limk')
          var aleatorio = Math.floor(Math.random() * (cantCancionesAlbum.innerHTML - 0) + 0);
          song = await getSong(nombreArtista, albumNombre.innerHTML, songs[aleatorio])
        } else {
          if (audioPlayer.paused) {
            clearInterval(intervalo);
            clearInterval(intervalo2);
            preview.src = song.preview_url
            preview.load()
            preview.volume=0;
            preview.play()
            intervalo = setInterval(function() {
              if (preview.volume>0.35) {
              }else{
                preview.volume+=0.001;
              }
          }, 15);
          if (typeof intervalo === 'number') {
                  setTimeout(function() {
                      clearInterval(intervalo);
                      intervalo = null;
                  }, 4500);
          } else {
          }}
      }
    })
    album.addEventListener('mouseleave', async function() {
      clearInterval(intervalo);
      clearInterval(intervalo2);
      intervalo2 = setInterval(function() {
        if ((preview.volume-0.01)<=0) {
          if (preview.volume-0.001<=0) {
          }else{
            preview.volume-=0.001
          }
        }else{
          preview.volume-=0.01;
        }
    }, 50);
    if (typeof intervalo2 === 'number') {

    setTimeout(function() {
        clearInterval(intervalo2);
        intervalo2 = null;
    }, 2000);
  }
  });
  // }, 1000);

}
async function artistasPreview() {
  const cantidad = document.getElementById('artistas.length')
  for (let index = 1; index <= (cantidad.innerHTML); index++) {
    let artista = document.getElementById(`artista`+index)
    artista.addEventListener('click',async function name(event) {
      console.log(artista)
      event.preventDefault();
      // nombreArtista= document.getElementById('artista'+index+'name')
      // nombreArtista= nombreArtista.innerHTML
      await goToArtista(artista.getAttribute('value'))
      
    if (cancion.getAttribute('value')=='nulo') {
      cancion.addEventListener('mouseenter',function name() {
        console.log('no hay preview link')
      })
    }else{
      cancion.addEventListener('mouseenter', async function () {
      preview.src = cancion.getAttribute('value')
      preview.load()
      if (audioPlayer.paused) {
        clearInterval(intervalo);
        clearInterval(intervalo2);
        preview.volume=0;
        preview.play()
        intervalo = setInterval(function() {
            if (preview.volume>0.25) {
            }else{
              preview.volume+=0.001;
            }
      }, 15);
        if (typeof intervalo === 'number') {
                setTimeout(function() {
                    clearInterval(intervalo);
                    intervalo = null;
                }, 4500);
        } else {
        }
      
      }
      })
      cancion.addEventListener('mouseleave', async function name(params) {
      clearInterval(intervalo);
      clearInterval(intervalo2);
      intervalo2 = setInterval(function() {
        if ((preview.volume-0.01)<=0) {
          if (preview.volume-0.002<=0) {
          }else{
            preview.volume-=0.002
          }
        }else{
          preview.volume-=0.01;
        }
    }, 50);
    if (typeof intervalo2 === 'number') {

    setTimeout(function() {
        clearInterval(intervalo2);
        intervalo2 = null;
    }, 2000);
    }
      });
    }
    })
  }
}
async function updatePlaylist(name, desc, songs) {
  for (let index = 0; index < order.length; index++) {
  }
  let data = {name: name, desc: desc, songs: songs};
  await fetch('../primerosPasos/Sections/Screens/Playlists.php?create=true', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  })
  .then(response => response.json())
  .then(data => console.log(data))
  .catch((error) => {
    console.error('Error:', error);
  });
}
async function createPlaylist() {
  // let data = {name: name, desc: desc};
  let form = document.getElementById('formPlaylist')
  let data = new FormData(form);
  console.log(data)
    await fetch('../primerosPasos/Functions/createPlaylist.php', {
    method: 'POST',
    body: (data),
  })
  // .then(async response => {console.log(await response.json())})
}
async function playlistsPreview() {
  let playlistsL = document.getElementById('playlists.length')
  console.log(playlistsL)  
  for (let index = 1; index <= playlistsL.innerHTML; index++) {
    let playlist = document.getElementById('playlist'+index)
    playlist.addEventListener('click', async () => {
      // console.log(playlist.getAttribute('value'))  
      await cargarContenido(`../primerosPasos/Sections/Screens/Playlist.php?playlistId=${playlist.getAttribute('value')}`)
      await moveList()
      await cancionesPreview()
    })
  }
      let butonPlaylist = document.getElementById('createPlaylist')
      butonPlaylist.addEventListener('click', async ()=>{
        let name = document.getElementById('namePlaylist')
        let desc = document.getElementById('descPlaylist')
        if (name.value != '') {
          console.log('no'+name.value)
        }else{
          await createPlaylist(name.value, desc.value)
          // console.log(name)
      await cargarContenido(`../primerosPasos/Sections/Screens/Playlist.php?playlistId=${playlist.getAttribute('value')}`)
        }
      })
  
}
async function getSongsFromAlbum(albumId) {
  await getToken()
    const response = await fetch(`https://api.spotify.com/v1/albums/${albumId}/tracks`, {
      headers: {
        'Authorization': `Bearer ${accessToken}`
      }
    });
    const data = await response.json();
    const songs = data.items.map(item => item.name);
    return songs;
}
async function getTrack(trackId) {
    const response = await fetch(`https://api.spotify.com/v1/tracks/${trackId}`, {
      headers: {
        'Authorization': `Bearer ${accessToken}`
      }
    });
    const data = await response.json();
    return data;
}
async function getSong(artistName, albumName, songName) {
  artistName = encodeURIComponent(artistName);
  albumName = encodeURIComponent(albumName);
  songName = encodeURIComponent(songName);

  const response = await fetch(`https://api.spotify.com/v1/search?q= ${artistName} ${songName} ${albumName}&type=track`, {
    headers: {
      'Authorization': `Bearer ${accessToken}`
    }
  });
  const data = await response.json();
  const song = data.tracks.items[0];
  return song;
}
async function searchSong(busqueda) {
    const url = `https://api.spotify.com/v1/search?q=${busqueda}&type=track&include_external=audio`;
    const headers = {
      'Authorization': ` Bearer ${accessToken}`
    };
    await fetch(url, { method: 'GET', headers: headers })
      .then(response => response.json())
      .then(data => {datos = data});
      return datos
}
async function search(busqueda) {
    const url = `https://api.spotify.com/v1/search?q=${busqueda}&type=album,artist,playlist,track`;
    const headers = {
      'Authorization': ` Bearer ${accessToken}`
    };
    await fetch(url, { method: 'GET', headers: headers })
      .then(response => response.json())
      .then(data => {datos = data});
      return datos
}
function msToTime(duration) {
  let minutes = Math.floor((duration / (1000 * 60)) % 60);
  let seconds = Math.floor((duration / 1000) % 60);

  minutes = (minutes < 10) ? "0" + minutes : minutes;
  seconds = (seconds < 10) ? "0" + seconds : seconds;

  return minutes + ":" + seconds;
}
// Evento click en los enlaces del navegador
document.getElementById('Nindex').addEventListener('click', async function(e) {
  e.preventDefault();
  await cargarContenido('../primerosPasos/Sections/Screens/home2.html');
});
document.getElementById('Iindex').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido(`../primerosPasos/Sections/Screens/home2.html`);
});
document.getElementById('Nbiblioteca').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido(`../primerosPasos/Sections/Screens/library.php`);
    await cancionesPreview();
    await artistasPreview();
    let albumsCant = document.getElementById('albums.length') 
    for (let index = 1; index <= albumsCant.innerHTML; index++) {
      let album = document.getElementById('album'+index)
      let albumNombre = document.getElementById('albumName'+index)
      await albumsPreview(album, index)
      album.addEventListener('click', async function name(e) {
        e.preventDefault()
        await goToAlbum(albumNombre.innerHTML, nombreArtista.innerHTML, album.getAttribute('value'));

      });
  }
});
document.getElementById('Nemociones').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido(`../primerosPasos/Sections/Screens/moods.php`);
    await cancionesPreview();
    // await albumsPreview();
});
document.getElementById('Nartistas').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido('Assets/Artistas.php');
    await artistasPreview()
});
document.getElementById('Nplaylists').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido('../primerosPasos/Sections/Screens/Playlists.php');
    await playlistsPreview()
});
async function interaccion(type, nombre) {
  var hoy = new Date();
  let hora = hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
  hora = padTime(hora)
  console.log('subiendo: '+type+':'+nombre+' a las : '+hora)
  // Enviar los datos del formulario mediante AJAX
  let response = await fetch(`interaccion.php?name=${nombre}&type=${type}&time=${hora}`, {
    method: 'GET'
  });
}
async function goToAlbum(album, artista, id) {
  await cargarContenido(`../primerosPasos/Sections/Screens/albumScreen.php?album=${album}&artist=${artista}&albumId=${id}`)
  await interaccion('Album', album)
  await cancionesPreview()
}
async function goToArtista(artistaId) {
  await cargarContenido(`../primerosPasos/Sections/Screens/artistScreen.php?artistaId=${artistaId}`);
  let nombreArtista = document.getElementById('Artista')
  console.log(nombreArtista)
  await interaccion('Artista', nombreArtista.innerHTML)
      let canciones = await getTopSongs(artistaId)
      console.log(canciones)
      let cancioness = document.getElementById('topCanciones')
      for (let index = 1; index <= canciones.length; index++) {
        if (canciones.tracks[index].preview_url != null) {
        cancioness.innerHTML+=`
        <style>
            #cancion${index}{
                background-color: green;
            }
        </style>
          <div id="cancion${index}" value="${canciones.tracks[index].preview_url}" style="width:30%;">
            <img id="imgS${index}" src="${canciones.tracks[index].album.images[2].url}" alt="">
            <p id="name${index}">${canciones.tracks[index].name}</p>
            <p id="artist${index}">${canciones.tracks[index].artists[0].name}</p>
            <p id="dur${index}">${msToTime(canciones.tracks[index].duration_ms)}</p>
            <p id="artistaId" style="display: none;">${canciones.tracks[index].artists[0].id}</p>
            <p id="albumSong${index}"  style="display: none;">${canciones.tracks[index].album.id}</p>
          </div> 
        `
        }else{
          cancioness.innerHTML+=`
        <style>
            #cancion${index}{
                background-color:#7fc3ff;
            }
        </style>
            <div id="cancion${index}" value="nulo" style="width:30%;">
              <img src="${canciones.tracks[index].album.images[2].url}" alt="">
              <p id="name${index}">${canciones.tracks[index].name}</p>
              <p id="artist${index}">${canciones.tracks[index].artists[0].name}</p>
              <p id="dur${index}">${msToTime(canciones.tracks[index].duration_ms)}</p>
              <p id="artistaId"  style="display: none;">${canciones.tracks[index].artists[0].id}</p>
              <p id="albumSong${index}"  style="display: none;">${canciones.tracks[index].album.id}</p>

            </div> 
          `

        }
      }
      cancioness.innerHTML+=`
      <p id="canciones.length">${canciones.length}</p>
      `
      setTimeout(async () => {
        await cancionesPreview()
      }, 200);
  let albumsCant = document.getElementById('albums.length') 
    for (let index = 1; index <= albumsCant.innerHTML; index++) {
      let album = document.getElementById('album'+index)
      let albumNombre = document.getElementById('albumName'+index)
      await albumsPreview(album, index)
      album.addEventListener('click', async function name(e) {
        e.preventDefault()
        await goToAlbum(albumNombre.innerHTML, nombreArtista.innerHTML, album.getAttribute('value'));

      });
  }
}
async function buscar() {
  let Bbusqueda = document.getElementById('Bbuscador')
  if (!eventAdded) {
    Bbusqueda.addEventListener('click', async function name(event) {
      event.preventDefault();
      await comun()
    });
    eventAdded = true;
  }
  // Resto del código
  busqueda.addEventListener('keydown',async function name(event) {
    if (event.key == 'Enter'){
      // event.preventDefault();
        await comun()
    }
    if (event.key == ' '){
      // busqueda.value += ' '
      // event.preventDefault();
      // setTimeout(() => {
      //   reproducir()
      // }, 1);
    }
    })
  async function comun() {
    console.log('buscando')
    await getToken()
      resultados = await search(busqueda.value)
      console.log(resultados)
    await cargarContenido(`../primerosPasos/Sections/Screens/searchScreen.php?busqueda=${busqueda.value}`);
    await cancionesPreview()
        let cantArtistas = document.getElementById('artistas.length')
      for (let index = 1; index < cantArtistas.innerHTML; index++) {
        let artista = document.getElementById(`artista${index}`)
        artista.addEventListener('click',async function name(event) {
          event.preventDefault();
          nombreArtista= document.getElementById('artista'+index+'name')
          nombreArtista= nombreArtista.innerHTML
          await goToArtista(artista.getAttribute('value'))
        })
      }
      let cantAlbums = document.getElementById('albums.length')
      for (let index = 1; index < cantAlbums.innerHTML; index++) {
        let album = document.getElementById(`album${index}`)
        await albumsPreview(album, index)
        let nombreAlbum = document.getElementById(`albumName${index}`)
        nombreArtista = document.getElementById(`artistaAlbum`+index).innerHTML
        album.addEventListener('click',async function name(event) {
          event.preventDefault();
          await goToAlbum(nombreAlbum.innerHTML, nombreArtista, album.getAttribute('value'))

        })
      }
  }
}
setInterval(() => {
  if (audioPlayer.paused) {
  }else{
    if (preview.paused) {
    }else{
      preview.pause()
    }
  }
}, 1000);
