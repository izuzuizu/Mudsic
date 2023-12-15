<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    include('conexion.php');
            function search($busqueda, $token) {
                $url = "https://api.spotify.com/v1/search?q=$busqueda&type=album,artist,playlist,track&market=AR";
                $headers = array(
                    'Authorization: Bearer ' . $token
                );
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                $data = curl_exec($ch);
                curl_close($ch);
                $datos = json_decode($data, true);
                return $datos;
            }
            $resultado='';
        if (isset($_GET['busqueda'])) {
            $busqueda = $_GET['busqueda'];
            $urlbusqueda = urlencode($busqueda);
                $clientId = 'eed31a43318f478ba48917070c9c3b37';
                $clientSecret = '3337a7d23626403399901e0f1e487a98';
                $params = array(
                    'grant_type' => 'client_credentials',
                    'client_id' => $clientId,
                    'client_secret' => $clientSecret
                );
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://accounts.spotify.com/api/token');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                $data = curl_exec($ch);
                curl_close($ch);
                $response = json_decode($data, true);
                $accessToken = $response['access_token'];
            

            $resultado = search($urlbusqueda, $accessToken);
            // function getDeezerPreviewLink($songName, $artistName) {
            //     $encodedArtistName = urlencode($artistName);
            //     $encodedSong = urlencode($songName);
            //     $url = 'https://api.deezer.com/search/track?q='.$encodedSong.'%27'.$encodedArtistName.'';
            //     $data = json_decode(file_get_contents($url), true);
            //     if (isset($data['data'][0]['preview'])) {
            //     $previewLink = $data['data'][0]['preview'];
            //     }else {
            //       $previewLink ='nulo';
            //     }
            //     return $previewLink;
            //   }
        }
    ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h1>Resultados: </h1>
    <h3 style="display: none;" id="buscado"><?php echo $busqueda ?></h3>
    <div class="row">
    <h2>Canciones:</h2>
        <div id="cancionesBusqueda" class="elementos">
            <?php
            for ($i=0; $i < count($resultado['tracks']['items']); $i++) { 
                $idSong ='';
                $idSpotify = $resultado['tracks']['items'][$i]['id'];
                $sql="SELECT * from canciones Where idSpotify = '$idSpotify'";
                $resulta = mysqli_query($conexion, $sql); 
                if ($resulta) {
                    while ( $row2 = mysqli_fetch_assoc($resulta)) {
                        $idSong = $row2['id'];
                    }    
                } 
                $cancion = $resultado['tracks']['items'][$i]['name'];
                $artista = $resultado['tracks']['items'][$i]['artists'][0]['name'];
                $album = $resultado['tracks']['items'][$i]['album']['id'];
                $link = $resultado['tracks']['items'][$i]['preview_url'];
                $seconds = floor($resultado['tracks']['items'][$i]['duration_ms'] / 1000); // Convertir a segundos
                $minutes = floor($seconds / 60); // Obtener el número de minutos
                $remainingSeconds = $seconds % 60; // Obtener los segundos restantes
                $formattedTime = sprintf('%02d:%02d', $minutes, $remainingSeconds); // Formatear el tiempo en MM:SS
            echo '
                <div class="elemento" id="cancion'.($i+1).'" value="'.$link.'">';
                    if (isset($resultado['tracks']['items'][$i]['album']['images'][2]['url'])) {
                        echo '
                            <img id="imgS'.($i+1).'" src="'.$resultado['tracks']['items'][$i]['album']['images'][0]['url'].'" alt="">
                        ';
                    }
                echo '
                    <div class="text">
                        <p id="name'.($i+1).'">'.$cancion.'</p>
                        <p id="artist'.($i+1).'">'.$artista.'</p>
                        <p style="display: none;" id="dur'.($i+1).'">'.$formattedTime.'</p>
                        <p style="display: none;" id="albumSong'.($i+1).'">'.$album.'</p>
                        <p style="display: none;" id="artistaIdSong'.($i+1).'">'.$resultado['tracks']['items'][$i]['artists'][0]['id'].'</p>
                        <p style="display: none;" id="songBD'.($i+1).'">'.$idSpotify.'</p>
                    </div>
                </div> 
            ';
            }
            echo '
            <p id="canciones.length" value="'.$i.'">'.$i.'</p>
            ';
            
            ?>
        </div>
    </div>
    <div class="row">
        <h2>Artistas:</h2>
            <div id="artistasBusqueda" class="elementos">
                <?php
                for ($i=0; $i < count($resultado['artists']['items']); $i++) { 
                echo '
                    <div class="elemento" id="artista'.($i+1).'" value="'.$resultado['artists']['items'][$i]['id'].'">';
                        if (isset($resultado['artists']['items'][$i]['images'][0]['url'])) {
                            echo '<img src="'.$resultado['artists']['items'][$i]['images'][0]['url'].'" alt="">';
                        } else {
                            // Proporciona un valor predeterminado o salta esta parte del código
                            // echo '<img src="'.$resultado['artists']['items'][$i]['images'][0]['url'].'" style="width: 250px ; heigth: 250px;" alt="">';
                        }
                        echo '
                        <div class="text">
                        <p class="name" id="artista'.($i+1).'name">'.$resultado['artists']['items'][$i]['name'].'</p>
                        <p style="display: none;">Popularidad: '.$resultado['artists']['items'][$i]['popularity'].'</p>
                        <p class="generos">generos: '.implode(' ', $resultado['artists']['items'][$i]['genres']).'</p>
                        </div>
                    </div>
                    ';
                }
                
                echo '
                <p style="display: none;" id="artistas.length" value="'.$i.'">'.$i.'</p>
                ';
                ?>
            </div> 
    </div>
    <div class="row">
    <h2>Albumes</h2>
    <div id="albumsBusqueda" class="elementos">
            
            <?php
                for ($i=0; $i < count($resultado['albums']['items']); $i++) { 
                    echo '
                        <div class="elemento" id="album'.($i+1).'" value="'.$resultado['albums']['items'][$i]['id'].'">';
                                echo '<p style="display: none;">'.$resultado['albums']['items'][$i]['album_type'].'</p>';

                                if (isset($resultado['albums']['items'][$i]['images'][0]['url'])) {
                                    echo '<img src="'.$resultado['albums']['items'][$i]['images'][0]['url'].'" alt="">';
                                } else {
                                    // Proporciona un valor predeterminado o salta esta parte del código
                                }
                                echo'
                                <p class="name" id="albumName'.($i+1).'" >'.$resultado['albums']['items'][$i]['name'].'</p>
                                <div class="artists" style="display: flex; flex-direction: row;">
                                ';
                                foreach ($resultado['albums']['items'][$i]['artists'] as $artista) {
                                    echo '
                                    <p class="generos" id="artistaAlbum'.($i+1).'">'.$artista['name'].'</p>';
                                    # code...
                                }
                                echo'
                                </div>
                                <p style="display: none;" id ="cantCancionesAlbum'.($i+1).'">'.$resultado['albums']['items'][$i]['total_tracks'].'</p>
                            </div>
                        ';

                }
                echo '
                <p id="albums.length" value="'.$i.'">'.$i.'</p>
                ';
            ?>

        </div>
    </div>
        
    <script src="busqueda.js"></script>
</body>
</html>