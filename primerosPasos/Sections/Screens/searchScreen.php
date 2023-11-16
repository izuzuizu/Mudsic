<!DOCTYPE html>
<html lang="en">
<head>
    <?php
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
    <h1>buscado: </h1>
    <h2 id="buscado"><?php echo $busqueda ?></h2>
    <h3>Canciones:</h3>
    <div id="cancionesBusqueda">
        <?php
        for ($i=0; $i < count($resultado['tracks']['items']); $i++) { 
            $cancion = $resultado['tracks']['items'][$i]['name'];
            $artista = $resultado['tracks']['items'][$i]['artists'][0]['name'];
            $album = $resultado['tracks']['items'][$i]['album']['name'];
            $link = $resultado['tracks']['items'][$i]['preview_url'];
            if ($link == '') {
                // $link = getDeezerPreviewLink($resultado['tracks']['items'][$i]['name'], $artista);
                $previewLink = 'nulo';
                echo '
                    <style>
                        #cancion'.($i+1).'{
                            background-color:#7fc3ff;
                        }
                    </style>
                ';
                }else{
                    echo'
                    <style>
                        #cancion'.($i+1).'{
                            background-color: green;
                        }
                    </style>
                    ';
                }
            $seconds = floor($resultado['tracks']['items'][$i]['duration_ms'] / 1000); // Convertir a segundos
            $minutes = floor($seconds / 60); // Obtener el número de minutos
            $remainingSeconds = $seconds % 60; // Obtener los segundos restantes
            $formattedTime = sprintf('%02d:%02d', $minutes, $remainingSeconds); // Formatear el tiempo en MM:SS

        echo '
            <div id="cancion'.($i+1).'" value="'.$link.'"  style="width:30%">';
                if (isset($resultado['tracks']['items'][$i]['album']['images'][2]['url'])) {
                    echo '
                        <img id="imgS'.($i+1).'" src="'.$resultado['tracks']['items'][$i]['album']['images'][0]['url'].'" style="width:20%; height:20%" alt="">
                    ';
                }
            echo '
                <p id="name'.($i+1).'">'.$cancion.'</p>
                <p id="artist'.($i+1).'">'.$artista.'</p>
                <p id="dur'.($i+1).'">'.$formattedTime.'</p>
                <p id="albumSong'.($i+1).'">'.$album.'</p>
                <p style="display:none;" id="artistaIdSong'.($i+1).'">'.$resultado['tracks']['items'][$i]['artists'][0]['id'].'</p>
            </div> 
        ';
        }
        echo '
        <p id="canciones.length" value="'.$i.'">'.$i.'</p>
        ';
        
        ?>
    </div>
    <h3>Artistas:</h3>
    <div id="artistasBusqueda">
        <?php
        for ($i=0; $i < count($resultado['artists']['items']); $i++) { 
        echo '
            <div id="artista'.($i+1).'" value="'.$resultado['artists']['items'][$i]['id'].'">
                <p id="artista'.($i+1).'name">'.$resultado['artists']['items'][$i]['name'].'</p>';
                if (isset($resultado['artists']['items'][$i]['images'][0]['url'])) {
                    echo '<img src="'.$resultado['artists']['items'][$i]['images'][0]['url'].'" style="width: 250px ; heigth: 250px;" alt="">';
                } else {
                    // Proporciona un valor predeterminado o salta esta parte del código
                    // echo '<img src="'.$resultado['artists']['items'][$i]['images'][0]['url'].'" style="width: 250px ; heigth: 250px;" alt="">';
                }
                echo '<p>Popularidad: '.$resultado['artists']['items'][$i]['popularity'].'</p>
                <p>generos: '.implode(' ', $resultado['artists']['items'][$i]['genres']).'</p>
            </div>
            ';
        }
        
        echo '
        <p id="artistas.length" value="'.$i.'">'.$i.'</p>
        ';
        ?>
    </div>
    <h3>Albums</h3>
    <div id="albumsBusqueda">
        
    <?php
        for ($i=0; $i < count($resultado['albums']['items']); $i++) { 
            echo '
                <div id="album'.($i+1).'" value="'.$resultado['albums']['items'][$i]['id'].'">
                        <p id="albumName'.($i+1).'" >'.$resultado['albums']['items'][$i]['name'].'</p>';
                        echo '<p>'.$resultado['albums']['items'][$i]['album_type'].'</p>';

                        if (isset($resultado['albums']['items'][$i]['images'][0]['url'])) {
                            echo '<img src="'.$resultado['albums']['items'][$i]['images'][0]['url'].'" style="width: 250px ; heigth: 250px;" alt="">';
                        } else {
                            // Proporciona un valor predeterminado o salta esta parte del código
                        }
                        echo '<p>artista/s:</p>';
                        foreach ($resultado['albums']['items'][$i]['artists'] as $artista) {
                            echo '<p id="artistaAlbum'.($i+1).'">'.$artista['name'].'</p>';
                            # code...
                        }
                        echo'
                        <p>canciones: </p>
                        <p id ="cantCancionesAlbum'.($i+1).'">'.$resultado['albums']['items'][$i]['total_tracks'].'</p>
                    </div>
                ';

        }
        echo '
        <p id="albums.length" value="'.$i.'">'.$i.'</p>
        ';
    ?>

    </div>
    <script src="busqueda.js"></script>
</body>
</html>