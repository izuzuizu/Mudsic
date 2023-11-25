<?php
    include("conexion.php");
    session_start();
    if (isset($_SESSION["userId"])) {
        $userId = $_SESSION["userId"];
    }
    // if (isset($_GET["update"])) {
    //     $data = json_decode(file_get_contents('php://input'), true);
    //     $name = $data['name'];
    //     $desc = $data['desc'];
    //     $songs = $data['songs'];
    // }
?>
<!DOCTYPE html>
<html lang="en">
<!-- <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head> -->
<body>
    <h1>Playlists guardadas</h1>
    <?php
        $userId = 1;
        $i = 0;
        $sql="SELECT * from playlists Where usuarios_id = '$userId'";
        $playlist = mysqli_query($conexion, $sql);
        while ($row2 = mysqli_fetch_assoc($playlist)) {
            $i++;
            echo '
                <div id="playlist'.$i.'" value="'.$row2['id'].'" draggable="true" style="width: 30%; background-color:blue">
                    <img id="imgS'.$i.'" src="'.$row2['imagen'].'" style="width:50%; height:50%" alt="">
                    <p id="name'.$i.'">'.$row2['nombre'].'</p>
                    <p id="desc'.$i.'">'.$row2['descripcion'].'</p>
                </div> 
                <input type="button" id="borrar'.$i.'" value="Borrar" name="Delete">
            ';
        }
    ?>
    <p id="playlists.length"><?php echo $i; ?></p>

    <div id="newPlaylist">
        <h1>crear nueva playlist</h1>
        <form action="" method="post" id="formPlaylist" enctype="multipart/form-data">
            <input type="hidden" placeholder="Nombre" name="create" id="namePlaylist">
            <input type="text" placeholder="Nombre"name="name" id="namePlaylist">
            <input type="text" placeholder="Descripcion" name="desc" id="descPlaylist">
            <input type="file" name="img" id="image">
            <!-- <input type="text" name="type" id="typePlaylist"> -->
        </form>
        <input type="button" id="createPlaylist" value="Crear">
    </div>
</body>
</html>