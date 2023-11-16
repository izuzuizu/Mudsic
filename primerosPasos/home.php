
    <?php
    include('./Functions/conexion.php');
    session_start();
    if (isset($_SESSION["userId"])) {
        $stmt = mysqli_prepare($conexion, "SELECT * from usuarios Where ID_u = ?");
        mysqli_stmt_bind_param($stmt, "s", $_SESSION["userId"]);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        while ($row = $result->fetch_assoc()) {
            // echo $row['your_column_name'];
            // echo $row['ID_u'];
        }
    }else{
        session_abort();
        // header("location: index.php");
    }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mudsic - Home</title>
<link rel="stylesheet" href="estilos/player.css">

  <audio id="preview" style="display: none;">
    <source src ="https://drive.google.com/uc?id=1HR2P7oxS973v41BvM-yag9PkqOn4T68C" type ="audio/mpeg" preload="auto">
  </audio>
</head>
<body>
  <div id="contextMenu" style="display: none; position: absolute;">
      <p class="option" id="next">Reproducir a continuacion</li>
      <p class="option" id="row">agregar a la fila</p>
      <p class="option" id="initRadio">Iniciar Radio</p>
      <p class="option" id="addRadio">Agregar Radio</p>
      <p class="option" id="like">Me Gusta</p>
      <p class="option" id="addLibrary">Agregar a Biblioteca</p>
      <!-- <li id="dele">eliminar de la fila</li> -->
    </div>
    <?php
        include('./Sections/nav.html')
    ?>
    <div class="contenido">
        <?php
            // include('./Sections/container.html')
        ?>
    </div>
    <div class="reproductor">
        <?php
            include('./Sections/player.html')
        ?>
    </div>
    <script src="./Functions/main.js"></script>
</body>
</html>
