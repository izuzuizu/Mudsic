<?php
session_start();
    if (isset($_SESSION['userId'])) {
        $imgUser = $_SESSION['img'];
    }else{
        session_destroy();
    }
    if (isset($_GET['salir'])) {
        session_destroy();
        header('Location: index.php');
    }
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seleccionar gustos - Mudsic</title>
    <link rel="stylesheet" href="./estilos/gustos.css">
</head>
<body>        
    <button class="next" id="next">
        <label for="next">Siguiente</label>
    </button>    
    <header>      
        <div class="left">
            <div class="title">
                <h1>Seleccionar Gustos</h1>
            </div>        
            <div class="info">
                <label>Por favor, selecciones 5 artistas/álbumes/géneros de sus gustos</label>
            </div>
        </div>                
        <div class="divisor">
            <div class="logo">
                <label>MUDSIC</label>        
            </div>
        </div>
        <div class="right">
            <div class="buscador">
                <label for="busqueda"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/></svg></label>
                <input type="search" name="busqueda" id="busqueda" placeholder="Ingrese su búsqueda"  id="buscador">  
            </div>
            <div class="sesion">
                <a href="gustos.php?salir=true"><label>Salir</label></a>
                <img src="<?php echo $_SESSION['img']; ?>" alt="">
            </div>
        </div>
        
    </header>
    <div class="cont">
        <div class="row">
            <h2>Titulo</h2>
            <div class="elementos">
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/8/8e/Clics-modernos-charly-garcia-front.jpg" alt="" srcset="">
                    <div class="text">
                        <label id="nombre">Clics Modernos</label>
                        <label id="autor">Charly García</label>
                    </div>                    
                </div>                
            </div>
        </div>               
    </div>
</body>
</html>