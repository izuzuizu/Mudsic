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
<style>
    .topCont{        
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
        align-items: center;
    },
    .newPlaylist{
        display: flex;
        flex-direction: row;
        align-items: center;
        width: 70%;
        justify-content: space-between;
    },
    .newPlaylist form input{
        width: 100px;
        padding: 5px;
        height: 100%,
    }
    .newPlaylist form{
        width: 40%;
        height: 50;
        background-color: aqua;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
</style>
<!DOCTYPE html>
<html lang="en">
<!-- <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head> -->
<body>
    <div class="cont">
    
    <div class="topCont">
        <h2>Playlists</h2>
        <div id="newPlaylist" class="newPlaylist">
            <h2>Crear playlist</h2>
            <form action="" method="post" id="formPlaylist" enctype="multipart/form-data">
                <input type="hidden" placeholder="Nombre" name="create" id="namePlaylist">
                <input type="text" placeholder="Nombre"name="name" id="namePlaylist">
                <input type="text" placeholder="Descripcion" name="desc" id="descPlaylist">
                <!-- <input type="file" name="img" id="image"> -->
                <!-- <input type="text" name="type" id="typePlaylist"> -->
            </form>
            <input type="button" id="createPlaylist" value="Crear">
        </div>
    </div>
    <div class="biblioteca">
    <?php
        $userId = 1;
        $i = 0;
        $sql="SELECT * from playlists Where usuarios_id = '$userId'";
        $playlist = mysqli_query($conexion, $sql);
        while ($row2 = mysqli_fetch_assoc($playlist)) {
            $i++;
            echo '
                <div class="elemento" id="playlist'.$i.'" value="'.$row2['id'].'" draggable="true">
                    <img id="imgS'.$i.'" src="'.$row2['imagen'].'" alt="">
                    <div class="text">
                        <p id="name'.$i.'">'.$row2['nombre'].'</p>
                        <p id="desc'.$i.'">'.$row2['descripcion'].'</p>
                    </div>
                    <input type="button" id="borrar'.$i.'" value="Borrar" name="Delete">
                </div>                 
            ';
        }
    ?>
    </div>
    </div>
    <p style="display: none" id="playlists.length"><?php echo $i; ?></p>    
</body>
</html>