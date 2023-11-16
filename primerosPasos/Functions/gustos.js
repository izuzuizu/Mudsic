let secciones = document.querySelector('.cont')
let Secciones = ['Artistas', 'Albumes', 'Generos', 'Canciones']
let access_token
let selectedArtists = []
let selectedAlbums = []
let selectedSongs = []
let selectedGenres = []
let form = document.querySelector('#formSelect') 
let next = document.querySelector('#next')
let genres = ["acoustic","afrobeat","alt-rock","alternative","ambient","anime","black-metal","bluegrass","blues","bossanova","brazil","breakbeat","british","cantopop","chicago-house","children","chill","classical","club","comedy","country","dance","dancehall","death-metal","deep-house","detroit-techno","disco","disney","drum-and-bass","dub","dubstep","edm","electro","electronic","emo","folk","forro","french","funk","garage","german","gospel","goth", "grindcore","groove","grunge","guitar","happy","hard-rock","hardcore","hardstyle","heavy-metal","hip-hop","holidays","honky-tonk","house","idm","indian","indie","indie-pop","industrial","iranian","j-dance","j-idol","j-pop","j-rock","jazz","k-pop","kids","latin","latino","malay","mandopop","metal","metal-misc","metalcore","minimal-techno","movies","mpb","new-age","new-release","opera","pagode","party","philippines-opm","piano","pop","pop-film","post-dubstep","power-pop","progressive-house","psych-rock","punk","punk-rock","r-n-b","rainy-day","reggae","reggaeton","road-trip","rock","rock-n-roll","rockabilly","romance","sad","salsa","samba","sertanejo","show-tunes","singer-songwriter","ska","sleep","songwriter","soul","soundtracks","spanish","study","summer","swedish","synth-pop","tango","techno","trance","trip-hop","turkish","work-out","world-music"]


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
    .then(data => {access_token = data.access_token})
    .catch(error => console.error(error))
}
setInterval(async() => {
    await getToken()
}, 3590000);
async function addElement(name, desc, img, type) {
    let elementos = document.querySelector('#elementos'+type)
    elementos.innerHTML += `
        <div class="elemento" id="element${name}" data-name="${name}">
        <img src="${img}" alt="" srcset="">
          <div class="text">
              <label for id="nombre">${name}</label>
              <label id="desc">${desc}</label>
          </div>
        </div>
    `
}
async function addSeccion(name) {
    secciones.innerHTML += `
        <div class="row" id="row${name}">
            <h2>${name}</h2>
            <div class="elementos" id="elementos${name}">
            </div>
        </div>
    `
}
for (let index = 0; index < Secciones.length; index++) {
    addSeccion(Secciones[index])
}
async function obtenerArtista(idArtista) {
  await getToken()
    const url = `https://api.spotify.com/v1/artists/${idArtista}`;

    let response = await fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': 'Bearer ' + access_token
        }
    });

    if (response.ok) {
        let data = await response.json();
        console.log(data)
        return data;
    } else {
        console.log("Error en la solicitud: " + response.status);
    }
}
async function obtenerAlbum(idAlbum) {
  await getToken()
    const url = `https://api.spotify.com/v1/albums/${idAlbum}`;

    let response = await fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': 'Bearer ' + access_token
        }
    });
    if (response.ok) {
        let data = await response.json();
        console.log(data)
        return data;
    } else {
        console.log("Error en la solicitud: " + response.status);
    }
}
async function loadArtists() {
  await getToken()
  // Obtener recomendaciones https://api.spotify.com/v1/recommendations?seed_artists=id-del-artista&seed_tracks=id-de-la-cancion&seed_genres=genero1,genero2,genero3,genero4,genero5&limit=5
  await fetch(`https://api.spotify.com/v1/recommendations?seed_genres=${genres[Math.floor(Math.random() * (genres.length+1))]}&limit=100`, {
    headers: { 'Authorization': 'Bearer ' + access_token }
  })
  .then(response => response.json())
  .then(async data => {
    let recommendations = data.tracks;

    let artsSaved = []
    let contador = 0;
for (let index = 0; index < 7; index++) {
  artsSaved.push(recommendations[index].artists[0].id)
  let name = recommendations[index].artists[0].name
  let artist = await obtenerArtista(recommendations[index].artists[0].id);
  let desc = artist.genres.join(', ');
  let img = ''
  if (artist.images[0]) {
    img = artist.images[0].url
  }
  await addElement(name, desc, img, Secciones[0])
}
for (let index = 0; index < 7; index++) {
  let element = document.getElementById('element'+recommendations[index].artists[0].name)
        element.style.border = '1px solid black';
        element.style.cursor = 'pointer';
  element.addEventListener('click', function () {
    if (this.style.backgroundColor === 'red') {
        this.style.backgroundColor = '';
        selectedArtists = selectedArtists.filter(item => item !== element.getAttribute('data-name'));
        contador--;
        console.log(selectedArtists);
    } else if (contador < 5) {
        this.style.backgroundColor = 'red';
        contador++;
        selectedArtists.push(element.getAttribute('data-name'))
        console.log(selectedArtists)
    }
})
}
});
}
async function loadAlbums() {
  await getToken()
  // Obtener recomendaciones https://api.spotify.com/v1/recommendations?seed_artists=id-del-artista&seed_tracks=id-de-la-cancion&seed_genres=genero1,genero2,genero3,genero4,genero5&limit=5
  await fetch(`https://api.spotify.com/v1/recommendations?seed_genres=${genres[Math.floor(Math.random() * (genres.length+1))]}&limit=100`, {
    headers: { 'Authorization': 'Bearer ' + access_token }
  })
  .then(response => response.json())
  .then(async data => {
    let recommendations = data.tracks;
    console.log(recommendations);
    let albSaved =[]
    let contador = 0
    for (let index = 0; index < 7; index++) {
          albSaved.push(recommendations[index].album.id)
          let name = recommendations[index].album.name
          let album = await obtenerAlbum(recommendations[index].album.id);
          let img = '' 
          if (album.images[0]) {
            img = album.images[0].url
          }
          let desc = album.artists[0].name
          await addElement(name, desc, img, Secciones[1])
    }
    for (let index = 0; index < 7; index++) {
      let element = document.getElementById('element'+recommendations[index].album.name)
            element.style.border = '1px solid black';
            element.style.cursor = 'pointer';
      element.addEventListener('click', function () {
        if (this.style.backgroundColor === 'red') {
            this.style.backgroundColor = '';
            selectedAlbums = selectedAlbums.filter(item => item !== element.getAttribute('data-name'));
            contador--;
            console.log(selectedAlbums);
        } else if (contador < 5) {
            this.style.backgroundColor = 'red';
            contador++;
            selectedAlbums.push(element.getAttribute('data-name'))
            console.log(selectedAlbums)
        }
    })
    }
  });
}
async function loadGenres() {
  let contador = 0

    for (let index = 0; index < genres.length; index++) {
          let name = genres[index]
          let img = ''
          let desc = 'genero'
          await addElement(name, desc, img, Secciones[2])
    }
    for (let index = 0; index < genres.length; index++) {
      let element = document.getElementById('element'+genres[index])
            element.style.border = '1px solid black';
            element.style.cursor = 'pointer';
      element.addEventListener('click', function () {
        if (this.style.backgroundColor === 'red') {
            this.style.backgroundColor = '';
            selectedGenres = selectedGenres.filter(item => item !== element.getAttribute('data-name'));
            contador--;
            console.log(selectedGenres);
        } else if (contador < 5) {
            this.style.backgroundColor = 'red';
            contador++;
            selectedGenres.push(element.getAttribute('data-name'))
            console.log(selectedGenres)
        }
    })
    }
}
async function loadSongs() {
  let contador = 0

  await getToken()
  // Obtener recomendaciones https://api.spotify.com/v1/recommendations?seed_artists=id-del-artista&seed_tracks=id-de-la-cancion&seed_genres=genero1,genero2,genero3,genero4,genero5&limit=5
  await fetch(`https://api.spotify.com/v1/recommendations?seed_genres=${genres[Math.floor(Math.random() * (genres.length+1))]}&limit=100`, {
    headers: { 'Authorization': 'Bearer ' + access_token }
  })
  .then(response => response.json())
  .then(async data => {
    let recommendations = data.tracks;
    console.log(recommendations);
    let artsSaved =[]
    for (let index = 0; index < 10; index++) {
          artsSaved.push(recommendations[index].album.id)
          let name = recommendations[index].name
          let img = '' 
          if (recommendations[index].album.images[0]) {
            img = recommendations[index].album.images[0].url
          }
          let desc = recommendations[index].artists[0].name
          await addElement(name, desc, img, Secciones[3])
    }
    for (let index = 0; index < 10; index++) {
      let element = document.getElementById('element'+recommendations[index].name)
            element.style.border = '1px solid black';
            element.style.cursor = 'pointer';
      element.addEventListener('click', function () {
        if (this.style.backgroundColor === 'red') {
            this.style.backgroundColor = '';
            selectedSongs = selectedSongs.filter(item => item !== element.getAttribute('data-name'));
            contador--;
            console.log(selectedSongs);
        } else if (contador < 5) {
            this.style.backgroundColor = 'red';
            contador++;
            selectedSongs.push(element.getAttribute('data-name'))
            console.log(selectedSongs)
        }
    })
    }
  });
}
loadGenres()
loadArtists()
loadAlbums()
loadSongs()
next.addEventListener('click', async function () {
  form.innerHTML = `
    <input type="text" name="song1" id="song1" value="${selectedSongs[0]}" >
    <input type="text" name="song2" id="song2" value="${selectedSongs[1]}" >
    <input type="text" name="song3" id="song3" value="${selectedSongs[2]}" >
    <input type="text" name="song4" id="song4" value="${selectedSongs[3]}" >
    <input type="text" name="song5" id="song5" value="${selectedSongs[4]}" >
    <input type="text" name="artist1" id="artist1" value="${selectedArtists[0]}"  >
    <input type="text" name="artist2" id="artist2" value="${selectedArtists[1]}" >
    <input type="text" name="artist3" id="artist3" value="${selectedArtists[2]}" >
    <input type="text" name="artist4" id="artist4" value="${selectedArtists[3]}" >
    <input type="text" name="artist5" id="artist5" value="${selectedArtists[4]}" >
    <input type="text" name="album1" id="album1" value="${selectedAlbums[0]}" >
    <input type="text" name="album2" id="album2" value="${selectedAlbums[1]}" >
    <input type="text" name="album3" id="album3" value="${selectedAlbums[2]}" >
    <input type="text" name="album4" id="album4" value="${selectedAlbums[3]}" >
    <input type="text" name="album5" id="album5" value="${selectedAlbums[4]}" >
    <input type="text" name="genre1" id="genre1" value="${selectedGenres[0]}" >
    <input type="text" name="genre2" id="genre2" value="${selectedGenres[1]}" >
    <input type="text" name="genre3" id="genre3" value="${selectedGenres[2]}" >
    <input type="text" name="genre4" id="genre4" value="${selectedGenres[3]}" >
    <input type="text" name="genre5" id="genre5" value="${selectedGenres[4]}" > 
  `
  setTimeout(() => {
  var inputs = form.getElementsByTagName('input');
  let cont =0
  for(var i = 0; i < inputs.length; i++) {
      if(inputs[i].type.toLowerCase() == 'text') {
          if(inputs[i].value == 'undefined') {
            cont-=1
          }else{
            cont+=1
          }
      }
  }
  console.log(cont)
  if (cont==(inputs.length)) {
    form.submit()
  }
  }, 1);
})
// window.addEventListener('focus', function() {
//   console.log('¡El usuario ha vuelto a la pestaña!');
// });
// window.addEventListener('blur', function() {
//   console.log('El usuario ha dejado la pestaña.');
// });
// window.addEventListener('keyup', function(event) {
//   console.log(event.key);
// });