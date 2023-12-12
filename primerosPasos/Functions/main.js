let audioPlayer = document.getElementById('actual');
const contenido = document.getElementById('containerSec');
let hoverContext = document.getElementById('hoverContext')
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
let busqueda = document.getElementById('busquedaText')
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
let playlistName
let playlistDesc
let actualPlaylistId
let contextMenu = document.getElementById('contextMenu')
let contextMenu2 = document.getElementById('contextMenu2')
let resultsBd = document.getElementById('resultsBd')
let nextButton = document.getElementById('avanzar')
let prevButton = document.getElementById('retroceder')
let reactActualSong = true
let reactSong = {}



// function onBackButtonEvent(e){
//   e.preventDefault();
//   console.log('onBackButtonEvent')
//   // var currentLocation = window.location.pathname;
//   // history.push(`${currentLocation}/mypage/new`);
// };
const onBackButtonEvent = (e) => {
  console.log('onBackButtonEvent')
  e.preventDefault();
  var currentLocation = window.location.pathname;
  history.push(`${currentLocation}/mypage/new`);
};
nextButton.onmouseenter = function(e) {
  if (cancionActual>0 && cancionActual < canciones.length-1) {
    hoverContext.innerHTML =`
    <p class="hoverContext" id="nextSong">${canciones[cancionActual+1].nombre}</p>
    <p class="hoverContext" id="nextSong">${canciones[cancionActual+1].artista}</p>
    `
    hoverContext.style.display = 'block';
    hoverContext.style.left = e.pageX + 'px';
    hoverContext.style.top = (e.pageY-20) + 'px';
    hoverContext.style.zIndex = 1500
    hoverContext.style.position = 'absolute'

  }
};
nextButton.onmouseleave = function(e) {
  hoverContext.style.display = 'none';
};
prevButton.onmouseenter = function(e) {
  if (cancionActual>0) {
    hoverContext.innerHTML =`
    <p class="hoverContext" id="nextSong">${canciones[cancionActual-1].nombre}</p>
    <p class="hoverContext" id="nextSong">${canciones[cancionActual-1].artista}</p>
    `
    hoverContext.style.display = 'block';
    hoverContext.style.left = e.pageX + 'px';
    hoverContext.style.top = (e.pageY-20)  + 'px';
    hoverContext.style.zIndex = 1500
    hoverContext.style.position = 'absolute'
  }
};
prevButton.onmouseleave = function(e) {
  hoverContext.style.display = 'none';
};

// // Usar window.history.pushState para agregar una entrada al historial del navegador
// window.history.pushState({page: "otraPagina"}, "otraPagina", "/otraPagina.html");

// // Usar window.history.replaceState para reemplazar la entrada actual del historial del navegador
// window.history.replaceState({page: "paginaReemplazada"}, "paginaReemplazada", "/paginaReemplazada.html");

// Usar el evento popstate para detectar cuando el usuario navega hacia atrás o hacia adelante
window.onpopstate = function(event) {
    console.log("location: " + document.location + ", state: " + JSON.stringify(event.state));
};

window.addEventListener('popstate', (e)=>{
  console.log('onBackButtonEvent')
  onBackButtonEvent(e)
});


// window.addEventListener("popstate", (event)=>{
//   event.preventDefault();
//   console.log(event)
//   onBackButtonEvent(event)
// });

function getAttributes(elementId) {
  var element = document.getElementById(elementId);
  var attributes = {};
  for (var i = 0; i < element.attributes.length; i++) {
      var attribute = element.attributes[i];
      attributes[attribute.name] = element.getAttribute(attribute.name);
  }
  return attributes;
}
function getResultsBd() {
  let results=[]
  var paragraphs = resultsBd.getElementsByTagName('p');
  for (let index = 0; index < paragraphs.length; index++) {
    const element = paragraphs[index];
    results[index] = getAttributes(element.id)
  }
  return results
}
async function consultBd(url) {
  const response = await fetch(url, );
  const data = await response.text();
  resultsBd.innerHTML = data
}
async function postBd(url, data) {
  const params = new URLSearchParams();
  for (const key in data) {
      params.append(key, data[key]);
  }
  const response = await fetch(url, {
      method: 'POST',
      headers: {
          'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: params
  });
  resultsBd.innerHTML = await response.text()
}
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
  // if (event.code === ' ') {
  //   event.preventDefault();
  //   window.scrollBy(0, 0);
  //   console.log('space')
  // }
});
function padTime(time) {
  let parts = time.split(':');
  let paddedParts = parts.map(part => part.padStart(2, '0'));
  return paddedParts.join(':');
}
async function getSongFromYTID(id) {
  const url = `https://youtube-mp36.p.rapidapi.com/dl?id=${id}`;
  const options = {
    method: 'GET',
    headers: {
      // 'X-RapidAPI-Key': '0da5fe62c2msh1ee3f8c081ec628p1b74d6jsnd14d82b9f8e0',
      'X-RapidAPI-Key': '6c4b6fb945mshda38336cdc12003p1049b1jsn94562655b31d',
      'X-RapidAPI-Host': 'youtube-mp36.p.rapidapi.com'
    }
  };
  try {
    const response = await fetch(url, options);
    const result = await response.json();
    // console.log(result);
    return result;
  } catch (error) {
    console.error(error);
  }

}
async function apiSecondOption(id){
  const url = `https://youtube-mp3-download-highest-quality1.p.rapidapi.com/ytmp3/ytmp3/custom/?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D${id}&quality=320`;
  const options = {
    method: 'GET',
    headers: {
      'X-RapidAPI-Key': '0da5fe62c2msh1ee3f8c081ec628p1b74d6jsnd14d82b9f8e0',
      'X-RapidAPI-Host': 'youtube-mp3-download-highest-quality1.p.rapidapi.com'
    }
  };

  try {
    const response = await fetch(url, options);
    const result = await response.json();
    console.log(result);
    return result.link
  } catch (error) {
    console.error(error);
  }
}
function delay(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}
async function addRow(cancion, artista, duracion, imagen, album, idBD) {
  //animacion de carga aca
  let cont = 0
  let resultado
  let repite = true
  // Clave de API de YouTube
  // const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
  const apiKey = 'AIzaSyAsB0IXlHf06T_S3UTIFcVPawfwOxZhayI';

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
      while (repite == true) {
        let resultado = await getSongFromYTID(datos.items[0].id.videoId)
          if (resultado.status == 'ok') {
            repite = false;
            await agregarALaFila(resultado.link, imagen, cancion, artista, duracion, album, idBD);
            clearInterval(intervalo4);
            actualizar()
          } else {
            console.log('esperando cancion')
            repite == true
          }
          if (cont>=5) {
            console.log(`siguiente api`);
            repite = false;
            let link = await apiSecondOption(datos.items[0].id.videoId)
            await agregarALaFila(link, imagen, cancion, artista, duracion, album, idBD)
          }
          cont += 1
          await delay(10000);  // Espera 10000ms

      }
    } else {
      // No se encontraron resultados
      console.log('la cancion no se pudo cargar')
  }
}
async function cancionNext(cancion, artista, duracion, imagen, album, idBD) {//animacion de carga aca
  let cont = 0
  let resultado
  let repite = true
  
  // Clave de API de YouTube
  // const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
  const apiKey = 'AIzaSyAsB0IXlHf06T_S3UTIFcVPawfwOxZhayI';

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
      while (repite == true) {
        const resultado = await getSongFromYTID(datos.items[0].id.videoId)
        if (resultado.status == 'ok') {
          repite = false;
          await siguienteCancion(resultado.link, imagen, cancion, artista, duracion, album, idBD);
          clearInterval(intervalo4);
          actualizar()
        } else {
            console.log('esperando cancion')
            repite == true
        }
          if (cont>=5 || resultado.status == 'fail') {
            console.log(`siguiente api`)
            repite = false;
            let link = await apiSecondOption(datos.items[0].id.videoId)
            await nuevaCancion(link, imagen, cancion, artista, duracion, album, idBD);
            // await interaccion('Cancion', cancion, idBD) 
            clearInterval(intervalo4);
          }
          cont += 1
          await delay(10000);  // Espera 10000ms
      }
      null;
    } else {
      // No se encontraron resultados
      console.log('la cancion no se pudo cargar')
  }
}
async function cancionNew(Cancion, artista, cancionDur, imagen, album, idBD) {
    //animacion de carga aca
    let cont = 0
    let resultado
    let repite = true
    // Clave de API de YouTube
    // const apiKey = 'AIzaSyCVZIYMDF521pter4qDvE0fmDt2moONilw';
    const apiKey = 'AIzaSyAsB0IXlHf06T_S3UTIFcVPawfwOxZhayI';
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
    
      while (repite == true) {
        const resultado = await getSongFromYTID(datos.items[0].id.videoId)
        console.log(resultado)
        if (resultado.status == 'ok') {
          repite = false;
          await nuevaCancion(resultado.link, imagen, Cancion, artista, cancionDur, album, idBD);
          // await interaccion('Cancion', Cancion, idBD) 
          clearInterval(intervalo4);
          actualizar()
        }else{
          console.log('esperando cancion')
          repite = true
        }
        if (cont>=3|| resultado.status == 'fail') {
          console.log(`siguiente api`)
          repite = false;
          let link = await apiSecondOption(datos.items[0].id.videoId)
          await nuevaCancion(link, imagen, Cancion, artista, cancionDur, album, idBD);
          // await interaccion('Cancion', Cancion, idBD) 
          clearInterval(intervalo4);
        }
        cont += 1
            await delay(10000);  // Espera 1000ms
        }
      } else {
        // No se encontraron resultados en yt
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
  playlistName = document.getElementById('playlistName')
  playlistDesc = document.getElementById('playlistDesc')
  actualPlaylistId = document.getElementById('playlistId')
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
    item.addEventListener('dragend', async ()=>{
      // console.log(item)
      var order = [];
      // Obtiene la lista
      var list = document.getElementById('sortable-list');
      // Obtiene los elementos de la lista
      var items = list.querySelectorAll('.cancion');
      // Recorre los elementos de la lista y añade su contenido al array
      for (var i = 0; i < items.length; i++) {
        order.push(parseInt(items[i].getAttribute('idBD')));
      }
      // Ahora, 'order' es un array que contiene el orden de los elementos
      // order.forEach(cancion => {
      //   let song = document.getElementById(cancion)
      //   cancion = song.getAttribute('idBD')
      // });
      orderPlaylist = order
      console.log(playlistName.innerHTML);
      await updatePlaylist(playlistName.innerHTML, playlistDesc.innerHTML, orderPlaylist, actualPlaylistId.innerHTML)
    })
  }
}

let loadingDiv = document.createElement('div');
loadingDiv.id = 'loadingDiv';
loadingDiv.style.display = 'none';
loadingDiv.innerHTML = 'Cargando...';
document.body.appendChild(loadingDiv);

// Mostrar la animación de "cargando"
function showLoading() {
  console.log('navegando')
  document.getElementById('loadingDiv').style.display = 'block';
}

// Ocultar la animación de "cargando"
function hideLoading() {
  console.log('screen cargada')
  document.getElementById('loadingDiv').style.display = 'none';
}

async function cargarContenido(url) {
    // Agregar la URL al historial
    // Crear un elemento div para la animación de "cargando"
    showLoading()
    history.push(url);
    async function getData(url) {
      const response = await fetch(url);
      const data = await response.text();
      // console.log(data)
      return data;
    }
    
    await getData(url).then(async data => {
        contenido.innerHTML = data;
        await hideLoading()
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
async function contextMenuSecondOption(cont, event){
  contextMenu2.style.left = event.pageX + 'px';
  contextMenu2.style.top = event.pageY + 'px';
  contextMenu2.style.display = 'block';
  contextMenu2.innerHTML = cont
}
window.onpopstate = function(event) {
  event.preventDefault()
  console.log(event)
  // console.log(`location: ${document.location}, state: ${JSON.stringify(event.state)}`);
};
async function openContextMenuSong(event, cancionName, artista, cancionDur, imagen, album, artistaSongID, idBD) {
  contextMenuPressed = true
  let index =0
  let data
  let options = document.querySelectorAll('.option')
  contextMenu.style.left = event.pageX + 'px';
  contextMenu.style.top = event.pageY + 'px';
  contextMenu.style.display = 'block';
  options.forEach(function(option) {
    option.addEventListener('click',async function (event) {
      switch (option.id) {
        case "next":
          await cancionNext(cancionName, artista, cancionDur, imagen, album, idBD);
          contextMenu.style.display = 'none'
        break;
        case "row":
          await addRow(cancionName, artista, cancionDur, imagen, album, idBD);
          contextMenu.style.display = 'none'

        break;
        case "initRadio":
          // await consultBd('./Functions/getEmociones_usuarios.php')
          // let results = getResultsBd()
          // console.log(results)
          await cancionNew(cancionName, artista, cancionDur, imagen, album, idBD)
          data = await getSongRecommendationsLFM(artista, cancionName);
          console.log(data.similartracks.track);
          if (data.similartracks.track.length>0) {
            // let elements = document.getElementById(`canciones${cancion[0].name}`);
            await Promise.all(data.similartracks.track.map(async function(song) {
              if (index<=3) {
                index++;
                let data5 = await getSong(song.name, ' ', song.artist.name);
                await cancionNext(data5.name, data5.artists[0].name, data5.duration_ms, data5.album.images[0].url, data5.album.name, data5.id);
              }
            }));
          }
          contextMenu.style.display = 'none'
          // contextMenu.style.display = 'none'
          break;
        case "addRadio":
          data = await getSongRecommendationsLFM(artista, cancionName);
          console.log(data.similartracks.track);
          if (data.similartracks.track.length>0) {
            // let elements = document.getElementById(`canciones${cancion[0].name}`);
            await Promise.all(data.similartracks.track.map(async function(song) {
              if (index<=3) {
                index++;
                let data5 = await getSong(song.name, ' ', song.artist.name);
                await addRow(data5.name, data5.artists[0].name, data5.duration_ms, data5.album.images[0].url, data5.album.name, data5.id);
              }
            }));
          }
          //recibir recomendacion
          // await radioSpotify(artista, "", cancionName)
          // artistaIdSong
          // await radio(artista, cancionName, album)
          // .then(tags => console.log(tags));
          // await cancionNew(cancionName, artista, cancionDur, imagen, album)
          break;
        case "like":
          await reaccionar()
          break;
        case "emotion":
          reactActualSong = false
          console.log(idBD)
          reactSong= {
            name: cancionName,
            artistName: artista,
            songId: idBD,
          }
          moveReacciones(event)
          break;
        case 'addLibrary':
          break;
        case 'goToArtist':
          console.log(artistaSongID)
          await goToArtista(artistaSongID)
          break;
        case 'goToAlbum':

          await goToAlbum(artistaSongID)
          break;
        case 'addToPlaylist':
          await consultBd('./Functions/getPlaylists.php');
          let playlists = getResultsBd();
          // console.log(playlists);
          let cont=0
          let conte = ' '
          playlists.forEach((playlist)=>{
            console.log(playlist);
            cont++
            conte += `
              <p class="option" id="playlist${cont}" idplaylist="${playlist.idplaylist}" >${playlist.name} // ${playlist.songlenght}</li>
            `
          })
          await contextMenuSecondOption(conte, event)
          for (let index = 1; index <= cont; index++) {
            const element = document.getElementById(`playlist${cont}`)
            element.addEventListener('click', async function (event) {
              let idPlaylist = element.getAttribute(`idplaylist`)
              console.log(idBD)
              await goToPlaylist(`${idPlaylist}&addSong=${idBD}`)
              contextMenu2.style.display = 'none'
            })
          }
          break;
        default:
          break;
      }
    })
  })
}
window.addEventListener('click', function(event) {
  var esClickDentro = contextMenu.contains(event.target);
  // if (!esClickDentro) {
  //     // Aquí va tu código para manejar cuando no se hace click en el div
  //     contextMenu.style.display = 'none'
  // }
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
  let idBD = document.getElementById('songBD'+index)
  if (imagen === null) {
  }else{
    imagen = imagen.src
  }
  let album = document.getElementById('albumSong'+index).innerHTML
  let artistaIdSong = document.getElementById('artistaIdSong'+index).innerHTML
  let cancion = document.getElementById('cancion'+index)
    cancion.addEventListener('click', async function() {
      clearInterval(intervalo);
      clearInterval(intervalo2);
      intervalo4 = setInterval(()=> {
        
        if ((preview.volume+0.001)>=0.6) {
          }else{
            preview.volume+=0.001;
          }
          }, 10);
      await cancionNew(cancionName, artista, cancionDur, imagen, album, idBD.innerHTML)
    })
    cancion.addEventListener('contextmenu', async function(event) {
      event.preventDefault();
      console.log(idBD.innerHTML)
      await openContextMenuSong(event, cancionName, artista, cancionDur, imagen, album, artistaIdSong.innerHTML, idBD.innerHTML)
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
    }, 3000);
    }
      });
    }
  }
  
}, 200);
}
async function albumsPreview(album, i) {//con fallas
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
      album.addEventListener('mouseenter', async function() {
      var aleatorio = Math.floor(Math.random() * (songs.length - 0) + 0);
      let song = await getSong(nombreArtista, albumNombre, songs[aleatorio])
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
async function updatePlaylist(name, desc, songs, playlistId) {
  // playlistName
  let form = document.getElementById('formPlaylist')
  let data = new FormData(form);
  // let arrayJson = JSON.stringify(songs);
  // Agregar el array a 'data'
  data.append('update', 'true');
  data.append('name', name);
  data.append('desc', desc);
  data.append('playlistId', playlistId);
  data.append('songs', JSON.stringify(songs));
  data.append('img', 'img2'); //cambiar img2 por variable con ruta a imagen de la playlist
  // let data = {name: name, desc: desc, songs: songs};
  let result= await fetch('../primerosPasos/Functions/updatePlaylist.php?update=true', {
    method: 'POST',
    headers: {
    },
    body: data,
  })
  // console.log(await result.text())
  await goToPlaylist(playlistId)
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
async function deletePlaylist(playlistId) {
  // console.log(playlistId)
  await fetch(`../primerosPasos/Functions/deletePlaylist.php?playlistId=${playlistId}`)
  await goToPlaylists()
}
async function playlistsPreview() {
  let playlistsL = document.getElementById('playlists.length')
  // console.log(playlistsL)
  for (let index = 1; index <= playlistsL.innerHTML; index++) {
    let playlist = document.getElementById('playlist'+index)
    let deleteButton = document.getElementById('borrar'+index)
    deleteButton.addEventListener('click', async () => {
      // console.log(playlist.getAttribute('value'))  
      // actualPlaylistId = playlist.getAttribute('value')
      await deletePlaylist(playlist.getAttribute('value'))
      // await moveList()
      // await cancionesPreview()
    })
    playlist.addEventListener('click', async () => {
      // console.log(playlist.getAttribute('value'))  
      actualPlaylistId = playlist.getAttribute('value')
      goToPlaylist(actualPlaylistId)
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
          await goToPlaylists()
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
  await getToken()
  const response = await fetch(`https://api.spotify.com/v1/search?q= ${artistName} ${songName} ${albumName}&type=track`, {
    headers: {
      'Authorization': `Bearer ${accessToken}`
    }
  });
  const data = await response.json();
  const song = data.tracks.items[0];
  return song;
}
async function getRelatedArtistsDeezer(artistName) {
  const response = await fetch(`https://api.deezer.com/search/artist/?q=${artistName}`);
  const data = await response.json();
  const artistId = data.data[0].id;

  const relatedResponse = await fetch(`https://api.deezer.com/artist/${artistId}/related`);
  const relatedData = await relatedResponse.json();

  return relatedData.data;
}
async function getSongRecommendationsLFM(artist, track) {
  const apiKey = '9d66f990777946bc7d28e61555e66c4b'; // Reemplaza esto con tu clave de API de Last.fm
  const url = `http://ws.audioscrobbler.com/2.0/?method=track.getsimilar&artist=${encodeURIComponent(artist)}&track=${encodeURIComponent(track)}&api_key=${apiKey}&format=json`;
  const response = await fetch(url);
  const data = await response.json();
  return data;
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
  await goToHome()
});
// document.getElementById('Iindex').addEventListener('click', async function(e) {
//     e.preventDefault();
//     await cargarContenido(`../primerosPasos/Sections/Screens/home2.html`);
// });
// document.getElementById('Nbiblioteca').addEventListener('click', async function(e) {
//     e.preventDefault();
//     await cargarContenido(`../primerosPasos/Sections/Screens/library.php`);
//     await cancionesPreview();
//     await artistasPreview();
//     let albumsCant = document.getElementById('albums.length') 
//     for (let index = 1; index <= albumsCant.innerHTML; index++) {
//       let album = document.getElementById('album'+index)
//       let albumNombre = document.getElementById('albumName'+index)
//       await albumsPreview(album, index)
//       album.addEventListener('click', async function name(e) {
//         e.preventDefault()
//         await goToAlbum(albumNombre.innerHTML, nombreArtista.innerHTML, album.getAttribute('value'));

//       });
//   }
// });
document.getElementById('Nemociones').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido(`../primerosPasos/Sections/Screens/moods.php`);
    await cancionesPreview();
    // await albumsPreview();
});
// document.getElementById('Nartistas').addEventListener('click', async function(e) {
//     e.preventDefault();
//     await cargarContenido('Assets/Artistas.php');
//     await artistasPreview()
// });
document.getElementById('Nplaylists').addEventListener('click', async function(e) {
    e.preventDefault();
    goToPlaylists()
});
document.getElementById('Nhistorial').addEventListener('click', async function(e) {
    e.preventDefault();
    await cargarContenido('../primerosPasos/Sections/Screens/history.php');
    // await playlistsPreview()
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
async function interaccion(type, nombre, idSpotify) {
  var hoy = new Date()
  let hora = hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
  hora = padTime(hora)
  console.log('subiendo: '+type+':'+nombre+' a las : '+hora)
  // Enviar los datos del formulario mediante AJAX
  let response = await fetch(`Functions/interaccion.php?name=${nombre}&type=${type}&time=${hora}&idSpotify=${idSpotify}`, {
    method: 'GET'
  });
}
async function addRowFromSong(params) {
  let homeSec = document.getElementById('homeSec')
  homeSec.innerHTML +=`
  <div class="row">
      <h2>Porque escuchaste ${params}</h2>
      <div id="canciones${params}" class="elementos">
      </div>
  </div>
  `;
}
async function goToHome(){
  let secLenght = 0
  await cargarContenido('../primerosPasos/Sections/Screens/home2.php');
  let homeSec = document.getElementById('homeSec')
  let songsLenght = 0;
  await consultBd('./Functions/getLibrary.php');
  let results = getResultsBd();
  console.log(results);
  let index = 0
  // for (let index = 0; index < 10; index++) {
      try {
    while(secLenght<3 && index < 2){
    const element = results[index];

    // await results.forEach(async (element)=>{
  // await Promise.all(results.map(async function(element) {
    const data = {
        songId: element.idspotify
    };
    await postBd(`./Functions/getSong-IdSp.php`, data);
    let cancion = getResultsBd();
    // console.log(cancion);
    if (cancion.length > 0) { 
      const data2 = {
          artistId: cancion[0].artistid
      };
      await postBd(`./Functions/getArtist-IdSp.php`, data2);
      let artista = getResultsBd();
      // console.log(artista);
      if (artista.length>0) {
      let data4 = await getSongRecommendationsLFM(artista[0].name, cancion[0].name);
      console.log(data4);
      let recommended = data4.similartracks.track
      if (recommended.length>0) {
        await addRowFromSong(element.name)
        secLenght++
        let elements = document.getElementById(`canciones${cancion[0].name}`);
        await Promise.all(recommended.map(async function(song) {
            let data5 = await getSong(song.name, ' ', song.artist.name);
            // console.log(data5);
            elements.innerHTML+=`
                <div class="elemento" id="cancion${songsLenght+1}" value="${data5.preview_url}">
                    <img id="imgS${songsLenght+1}" src="${data5.album.images[0].url}" alt="">
                    <div class="text">
                        <p id="name${songsLenght+1}">${data5.name}</p>
                        <p id="artist${songsLenght+1}">${data5.artists[0].name}</p>
                        <p style="display: none;" id="dur${songsLenght+1}">${data5.duration_ms}</p>
                        <p style="display: none;" id="albumSong${songsLenght+1}">${data5.album.name}</p>
                        <p style="display: none;" id="artistaIdSong${songsLenght+1}">${data5.artists[0].id}</p>
                        <p style="display: none;" id="songBD${songsLenght+1}">${data5.id}</p>
                    </div>
                </div> 
            `;
            songsLenght++;
        }));
      }
      }
    }
      index++
  }
      } catch (error) {
        console.log(error)
      }
  homeSec.innerHTML+=`
  <p id="canciones.length" style="display:none;" value="${songsLenght}">${songsLenght}</p>
  `;
  await cancionesPreview();
}
async function goToAlbum(album, artista, id) {
  await cargarContenido(`../primerosPasos/Sections/Screens/albumScreen.php?album=${album}&artist=${artista}&albumId=${id}`)
  await interaccion('Album', album, id)
  await cancionesPreview()
}
async function goToArtista(artistaId) {
  await cargarContenido(`../primerosPasos/Sections/Screens/artistScreen.php?artistaId=${artistaId}`);
  let nombreArtista = document.getElementById('Artista')
  console.log(nombreArtista)
  await interaccion('Artista', nombreArtista.innerHTML, artistaId)
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
async function goToPlaylists() {
  await cargarContenido('../primerosPasos/Sections/Screens/Playlists.php');
  await playlistsPreview()
}
async function goToPlaylist(id) {
  console.log(id)
  await cargarContenido(`../primerosPasos/Sections/Screens/Playlist.php?playlistId=${id}`)
  await moveList()
  await cancionesPreview()
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

// goToHome() //descomentar para que se carguen recomendaciones de home apenas se abre la pagina