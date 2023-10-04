<?php
include('conexion.php');
if (isset($_GET['token'])) {
        if (session_start()) {
            $token = $_GET['token'];
            $sql = "SELECT * FROM usuarios WHERE token='$token'";
            $consulta = mysqli_query($conexion, $sql);
            if (mysqli_num_rows($consulta) > 0) {
                $sql = "UPDATE usuarios SET token='ok' WHERE token='$token'";
                $actualizar = mysqli_query($conexion, $sql);
                $row = mysqli_fetch_assoc($consulta);
                $_SESSION['user'] = 'agus';
                $_SESSION['pass'] = $row['Pass_u'];
                $usuario = $_SESSION['user'];
                header('location: gustos.html');
            }else{
                echo 'el token no existe, registrese';
                session_destroy();
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse - Mudsic</title>
    <link rel="stylesheet" href="estilos/registro.css">
</head>
<body>
<?php
    include('redimensionarImg.php');
    if (isset($_GET['send'])) {
        if ($_GET['send'] == 1) {
            echo 'Correo enviado, por favor valide';
        }else{
            echo 'error al enviar correo de validacion';
        }
    }
        if (isset($_POST['usuario'])) {
            $token = time();
            $user = $_POST['usuario'];
            $pass = $_POST['contrasenia'];
            $email = $_POST['mail'];
            $contrasenia = password_hash($pass, PASSWORD_DEFAULT);
            $foto = $_FILES["imagen"]['tmp_name'];
            echo '
            <div class="aviso">Enviando correo de verificación, por favor espere</div>

            
            ';
            if(is_uploaded_file($_FILES['imagen']["tmp_name"])){
                $foto = 'imagenesUsers/'.$token.$_FILES["imagen"]["name"];
                move_uploaded_file($_FILES["imagen"]["tmp_name"], $foto);
            }else{
                $foto = 'imagenes/default.png';
            }
            // $Nimg = redimensionarImg($foto, 200, 200);
            // unlink($foto); //borra la imagen original guardada en la raiz del proyecto 
            $sql = "INSERT INTO usuarios (Nbr_u, Pass_u, Email_u, img, token) VALUES ('$user', '$contrasenia', '$email', '$foto', '$token')";
            $registrar= mysqli_query($conexion, $sql)? print("<script>console.log('usuario creado');</script>"): print('error al crear');
?>            
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script>
        // https://api.jquery.com/jQuery.ajax
        let url = 'https://formsubmit.co/ajax/<?php echo $email; ?>'
        let mensaje = 'Valide su correo: http://localhost/mudsic/primerospasos/registro.php?token=<?php echo $token; ?>'
        $.ajax({
            method: 'POST',
            url: url,
            dataType: 'json',
            accepts: 'application/json',
            data: {
                name: '<?php echo $user; ?>',
                message: mensaje
            },
            success: (data) =>  window.location = 'registro.php?send=1',
            error: (err) => window.location = 'registro.php?send=0'
        });
    </script>
    <?php
        }
        if (!isset($_POST['subir'])) {
    ?>
    <div class="logo">
        <label>MUDSIC</label>
    </div>
    <form action="" method="post" id="form" enctype="multipart/form-data" >
        <div class="title">
            <h1>Registrarse</h1>
        </div>        
        <div class="top">
            <div class="left">                
                <div class="boton">
                    <label>Clickee para subir su imagen</label>
                    <input type="file" id="imgSubida" name="imagen">
                    <img id="imagen" src="imagenes/default.png">
                </div>                                
            </div>
            <div class="right">
                <label for="nombre" id="mar">Nombre de usuario</label>
                <input type="text" id="nombre" name="usuario" placeholder="Ingrese su nombre de usuario">
                <label for="correo" id="mar">Correo</label>
                <input type="email" id="correo" name="mail" placeholder="Ingrese su correo">        
            </div>                        
        </div>
        <div class="center">
            <div class="left">
                <label for="contrasenia1" id="mar">Contraseña</label>
                <input type="password" id="contrasenia1" name="contrasenia" placeholder="Ingrese su contraseña">
            </div>
            <div class="centerCenter">
                <label for="contrasenia2" id="mar">Verifique contraseña</label>
                <input type="password" id="contrasenia2" name="contrasenia2" placeholder="Verifique contraseña">
            </div>
            <div class="right">
                <label id="mar">Fecha de nacimiento</label>
                <input type="date" id="nacimiento" name="nacimiento" placeholder="Fecha de nacimiento">
            </div>
        </div>            
        <input type="submit" id="sub" value="Registrarse" name="subir" > 
        <div class="bottom">
            <label>¿ya tiene una cuenta?</label>
            <a href="./inicio-sesion.html">inicie sesion</a>                
        </div>                   
    </form>
<script src="registro.js"></script>
<?php
}
?>
</body>
</html>