<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <header>
        <div class="leftH">
            <div class="logo">
                <label>MUDSIC</label>
            </div>
        </div>
        <div class="rightH">
            <div class="searchCont">
                <input type="search" name="" id="">
                <img src="imagenes/magnifying-glass-solid.svg" alt="" srcset="">
            </div>
            <div class="profile" onclick="abrirConfig()">
                <img src="imagenes/user-solid.svg">
                <input type="checkbox" name="" id="profile" style="display: none;">
            </div>
            <div class="config" id="profileConfig">
                <label for="">Modificar nombre</label>
                <label for="">Modificar contraseña</label>
                <div class="separador"></div>
                <label class="logOut" for="">Cerrar Sesión</label>
            </div>
        </div>
    
</header>
<script style="display: none;">
   function abrirConfig() {
        var checkbox = document.getElementById("profile");
        checkbox.checked = !checkbox.checked;
        aparecerConfig();
    }

    function aparecerConfig() {
        var config = document.getElementById("profileConfig");
        var checkbox = document.getElementById("profile");

        // Si el checkbox está marcado, establece la opacidad en 1, de lo contrario, en 0.5
        config.style.display = checkbox.checked ? "flex" : "none";
         
    }
    document.addEventListener('click', function(event) {
        if (event.target === checkbox) {
        }else{
            config.style.display = 'none'
        }
    });   
</script>

</body>
</html>
