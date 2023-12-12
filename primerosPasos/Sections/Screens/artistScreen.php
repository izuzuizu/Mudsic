<?php
    session_start();
    if (isset($_SESSION["userId"])){
        $userId = $_SESSION['userId'];
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    include('conexion.php');
    ?>
    <?php
    $total =0;
        $artistaId = $_GET['artistaId'];
        $artista = "Error al tomar Artista";
        $artId = 0;
        $userId = 1;
        $sql="SELECT * from artistas Where artista_idSpotify = '$artistaId'";
        $resulta = mysqli_query($conexion, $sql);
        while ($row = mysqli_fetch_assoc($resulta)) {
            $artista = $row['nombre'];
            $imagen = $row['imgArtista'];
            $popularidad = $row['popularidad'];
            $seguidores = $row['seguidores'];
            $artId = $row['id'] ;
        }
        $sql="SELECT * from artistas_generos Where artista_id = '$artId'";
        $resulta = mysqli_query($conexion, $sql);
        $i=0;
        $generos=[];
        $a='';
        while ($row = mysqli_fetch_assoc($resulta)) {
            $generos[$i] = $row['generos_id'];
            $genero = $row['generos_id'];
            $sql="SELECT * from generos Where id = '$genero'";
            $resultado = mysqli_query($conexion, $sql);
            while ($row = mysqli_fetch_assoc($resultado)) {
                $a.=$row['nombre'];
                $a.=', ';
            }
        }    
        $a = substr($a, 0, -1); 
        for ($i=0; $i < count($generos) ; $i++) { 
        }
        $generos=$a
    ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $artista; ?></title>
</head>
<body>
    <h1 id="Artista"><?php echo $artista; ?></h1>
    <div id="artistaContent">
        <img src="<?php echo $imagen; ?>" alt="">
        <?php
            echo'
                <h4>Popularidad: '.$popularidad.'</h4>
                <p>Generos: '.$generos.'</p>';
        ?>
        <div id="topCanciones"></div>
    </div>
<?php
    $i =0;
    
    $sql="SELECT * from albumes_artistas Where artistas_id = '$artId'";
    $resultaa = mysqli_query($conexion, $sql);
    $i=0;
    $albumes=[];
?>
    <div id="albums">
        <?php
    while ($row = mysqli_fetch_assoc($resultaa)) {
        $i+=1;
                $album = $row['albumes_id'];
                $sql="SELECT * from albumes Where id = '$album'";
                $resulta = mysqli_query($conexion, $sql); 
                while ( $row2 = mysqli_fetch_assoc($resulta)) {
                    $albumId = $row2['album_idSpotify'];
                    $albumName = $row2['nombre'];
                    $albumImg = $row2['imgAlbum'];
                    $albumTipo= $row2['type'];
                    $albumLength= $row2['canciones'];
                }            
                echo'
                    <div id="album'.$i.'" value="'.$albumId.'" style width="15%">
                        <h3 id="albumName'.$i.'" >'.$albumName.'</h3>
                        <img id="imgS'.$i.'" width="10%" height="10%" src="'.$albumImg.'" alt="">
                        <h4>'.$albumTipo.'</h4>
                        <p>canciones: </p>
                        <p id ="cantCancionesAlbum'.$i.'" value="'.$albumLength.'" >'.$albumLength.'</p>      
                        <p id="albumId'.$i.'" value="'.$albumId.' ?>" style="display: none;">'.$albumId.'</p>
                        <p id="artistaAlbum'.$i.'" style="display: none;">'.$artista.'</p>
                    </div>
                ';
                    $total += 1 ;
            }
            echo '<p id="artistaAlbum0">'.$artista.'</p>';

                echo'
                <p id="albums.length">'.$total.'</p>
                ';
        ?>

    </div>
    <script src="/Mudsic/Assets/artista.js"></script>
</body>
</html>