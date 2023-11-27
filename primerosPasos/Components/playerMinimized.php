<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="playerMin">
    <div class="reproductor">   
        <div class="left">
            <div class="dataSong">
                <audio id="actual">
                </audio>
                <audio id="next">
                <source src="" type="audio/mpeg">
                </audio>                 
                <img src="https://i.scdn.co/image/ab6761610000e5ebdee8893f3b9b4db47d45a9ad" id="imagenCancion" style="width: 50px; height:50px" alt="">
                <div class="titleAndName">
                    <p id="nombreCancion">Nombre de ejemplo</p>
                    <p id="artistaCancion">Artista de ejemplo</p>
                </div>                
            </div>            
            <section id="time" class="time">
                <input type="range" min="0" max="100" step="1" value="0" id="barraDeProgreso">
                    <div class="times">
                        <h1 id="tiempo">00:00</h1>            
                        <h1 id="reproducido">00:00</h1>
                    </div>                
            </section>
        </div>       
        <div class="right">
            <div class="player">    
                <button id="reaccionB" class="nav" onclick="abrirReacciones()" value="1">
                    <img src="./imagenes/face-smile-solid.svg">
                    <input type="checkbox" name="" id="reactions" style="display: none;">
                </button>
                <div class="reactionsCont" id="reactionsCont">
                    <div id="emojiToggleContainer" onclick="toggleLikeDislike()" class="emojiToggleContainer">
                        <div class="emojiToggleText">👍</div>
                        <div class="emojiToggleText">👎</div>
                    </div>
                    <div class="flatList">
                        <!-- Reemplaza los elementos de FlatList según sea necesario -->
                        <!-- Los emojis se actualizarán dinámicamente según el estado -->
                    </div>
                </div>

                <!-- <button id="parar" class="nav" onclick="parar()">
                    <img src="./imagenes/stop-solid.svg">
                </button> -->
                <button id="lista" class="nav" onclick="lista()">
                    <img src="./imagenes/list-solid.svg" alt="" srcset="">
                </button>
                <button id="retroceder" class="nav" onclick="reproducirAnteriorCancion()">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Fast_forward_font_awesome.svg/2000px-Fast_forward_font_awesome.svg.png" width="40" height="40" style="  transform: rotate(180deg);">
                </button>
                <input type="checkbox" name="" id="play-pause" style="display: none;">
                <button class="nav" onclick="reproducir()">
                    <img src="./imagenes/pause-solid.svg" id="PP">
                </button>
                <button id="avanzar" class="nav" onclick="reproducirSiguienteCancion()">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Fast_forward_font_awesome.svg/2000px-Fast_forward_font_awesome.svg.png" width="40" height="40">
                </button>
                
                <button id="repetir" class="nav" onclick="repetir()">
                    <img src="./imagenes/reply-solid.svg">
                </button>
                <button id="Vol" onclick="abrirVolumen()" for="volume">                    
                    <img src="./imagenes/volume-low-solid.svg">
                </button> 
                <input type="checkbox" name="" id="volume" style="display: none;">
                <input type="range" min="0" max="100" step="1" value="100" for="volume" id="volumen">

            </div>
        </div>
    </div>
    <script style="display: none;" src="./Functions/player.js"></script>
    <script style="display: none;">
        function abrirVolumen() {
            var checkbox = document.getElementById("volume");
            checkbox.checked = !checkbox.checked; // Invierte el estado actual del checkbox
            actualizarOpacidad();
        }

        function actualizarOpacidad() {
            var rangeInput = document.getElementById("volumen");
            var checkbox = document.getElementById("volume");

            // Si el checkbox está marcado, establece la opacidad en 1, de lo contrario, en 0.5
            rangeInput.style.display = checkbox.checked ? flex : none;
        }

    </script>
<script style="display: none;">
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
</script>
</div>
</body>
</html>
