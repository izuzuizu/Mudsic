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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seleccionar gustos - Mudsic</title>
    <link rel="stylesheet" href="estilos/gustos.css">
</head>
<body>    
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
            <h2>Álbumes</h2>
            <div class="elementos">
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/8/8e/Clics-modernos-charly-garcia-front.jpg" alt="" srcset="">
                    <label id="nombre">Clics Modernos</label>
                    <label id="autor">Charly García</label>
                </div>
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/The_Dark_Side_of_the_Moon_Cover.svg/1200px-The_Dark_Side_of_the_Moon_Cover.svg.png" alt="" srcset="">
                    <label id="nombre">Dark Side of the Moon</label>
                    <label id="autor">Pink Floyd</label>
                </div>
                <div class="elemento">
                    <img src="https://elplanetaurbano.com/wp-content/uploads/2022/11/Thriller-40-Planeta-Urbano-2022-4.jpg" alt="" srcset="">
                    <label id="nombre">Thriller</label>
                    <label id="autor">Michael Jackson</label>
                </div>
                <div class="elemento">
                    <img src="data:image/jpeg;base64,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" alt="" srcset="">
                    <label id="nombre">Abbey Road</label>
                    <label id="autor">The Beatles</label>
                </div>
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/ACDC_Back_in_Black_cover.svg/1200px-ACDC_Back_in_Black_cover.svg.png" alt="" srcset="">
                    <label id="nombre">Back in Black</label>
                    <label id="autor">AC/DC</label>
                </div>
            </div>
        </div>
        <div class="row">
            <h2>Canciones</h2>
            <div class="elementos">
                <div class="elemento">
                    <img src="https://www.queenonline.com/global/uploads/NATO-7-010.jpg" alt="" srcset="">
                    <label id="nombre">Bohemian Rhapsody</label>
                    <label id="autor">Queen</label>
                </div>
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/6/69/ImagineCover.jpg/220px-ImagineCover.jpg" alt="" srcset="">
                    <label id="nombre">Imagine</label>
                    <label id="autor">John Lennon</label>
                </div>
                <div class="elemento">
                    <img src="https://www.futuro.cl/wp-content/uploads/2015/06/bob-dylan-like-a-rolling-stone-single.jpg" alt="" srcset="">
                    <label id="nombre">Like a Rolling Stone</label>
                    <label id="autor">Bob Dylan</label>
                </div>
                <div class="elemento">
                    <img src="https://upload.wikimedia.org/wikipedia/en/4/49/Hotelcalifornia.jpg" alt="" srcset="">
                    <label id="nombre">Hotel California</label>
                    <label id="autor">Eagles</label>
                </div>
                <div class="elemento">
                    <img src="https://images.genius.com/e32f851a56d0b5465ec511c499e92a1c.1000x1000x1.png" alt="" srcset="">
                    <label id="nombre">Piso 13</label>
                    <label id="autor">Dillom</label>
                </div>
            </div>
        </div>
        
        <div class="row">
            <h2>Artistas</h2>
            <div class="elementos">
                <div class="elemento">
                    <img src="https://cdn.britannica.com/18/136518-050-CD0E49C6/The-Beatles-Ringo-Starr-Paul-McCartney-George.jpg" alt="" srcset="">
                    <label id="nombre">The Beatles</label>
                    <label id="autor">Banda de rock</label>
                </div>
                <div class="elemento">
                    <img src="https://akamai.sscdn.co/gcs/cifra-blog/es/wp-content/uploads/2023/03/44306d2-bob-marley.webp" alt="" srcset="">
                    <label id="nombre">Bob Marley</label>
                    <label id="autor">Reggae</label>
                </div>
                <div class="elemento">
                    <img src="https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2023/06/28/16879841612122.jpg" alt="" srcset="">
                    <label id="nombre">Madonna</label>
                    <label id="autor">Pop</label>
                </div>
                <div class="elemento">
                    <img src="https://hips.hearstapps.com/hmg-prod/images/gettyimages-73909081.jpg" alt="" srcset="">
                    <label id="nombre">Miles Davis</label>
                    <label id="autor">Jazz</label>
                </div>
                <div class="elemento">
                    <img src="https://indiehoy.com/wp-content/uploads/2023/08/elvis-presley.jpg" alt="" srcset="">
                    <label id="nombre">Elvis Presley</label>
                    <label id="autor">Rock and Roll</label>
                </div>
            </div>
        </div>
        
        <div class="row">
            <h2>Géneros</h2>
            <div class="elementos">
                <div class="elemento">
                    <img src="https://concepto.de/wp-content/uploads/2018/09/rock-e1536060138214.jpg" alt="" srcset="">
                    <label id="nombre">Rock</label>
                    <label id="autor">Varios artistas</label>
                </div>
                <div class="elemento">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSF1Cgxc7N4z3cSyN-7NfwPk8nDo_5irLVG8oVsiWqXBfZhEHKS-Au7Wq7IKqFJhg1FNM&usqp=CAU" alt="" srcset="">
                    <label id="nombre">Pop</label>
                    <label id="autor">Varios artistas</label>
                </div>
                <div class="elemento">
                    <img src="https://calmradio.com/media/k2/items/cache/6e5f82f1a5cbe57f75e584aa54793b25_XL.jpg" alt="" srcset="">
                    <label id="nombre">Jazz</label>
                    <label id="autor">Varios artistas</label>
                </div>
                <div class="elemento">
                    <img src="https://cdn.pixabay.com/photo/2022/05/20/15/06/reggae-7209640_1280.jpg" alt="" srcset="">
                    <label id="nombre">Reggae</label>
                    <label id="autor">Varios artistas</label>
                </div>
                <div class="elemento">
                    <img src="https://estaticos-cdn.prensaiberica.es/clip/877e7d97-1eca-4c50-9f68-96ec1ee9e04c_16-9-aspect-ratio_default_0.jpg" alt="" srcset="">
                    <label id="nombre">Clásica</label>
                    <label id="autor">Varios artistas</label>
                </div>
            </div>
        </div>
        
    </div>
</body>
</html>