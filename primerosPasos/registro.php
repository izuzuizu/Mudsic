<?php
include('./Functions/conexion.php');

if (isset($_GET['token'])) {
        if (session_start()) {
            $token = $_GET['token'];
            $sql = "SELECT * FROM usuarios WHERE token='$token'";
            $consulta = mysqli_query($conexion, $sql);
            if (mysqli_num_rows($consulta) > 0) {
                $sql = "UPDATE usuarios SET token='ok' WHERE token='$token'";
                $actualizar = mysqli_query($conexion, $sql);
                $row = mysqli_fetch_assoc($consulta);
                $_SESSION['user'] = $row['Nbr_u'];
                $_SESSION['userId'] = $row['ID_u'];
                $_SESSION['img'] = $row['Img_u'];
                header('location: gustos.php');
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
    include('./Functions/redimensionarImg.php');
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
                $Nimg = redimensionarImg($foto, 200, 200);
            }else{
                $foto = 'imagenes/default.png';
            }


            $sql = "SELECT * from usuarios where ID_u=(SELECT MAX(ID_u) from usuarios)";
            $leer = mysqli_query($conexion, $sql);
            $usuarios = mysqli_fetch_assoc($leer);
            $id = $usuarios['ID_u'];

            $bandera = false;
            for ($id; $id > 0; $id--) { 
                $sql = "SELECT * from usuarios where ID_u=(SELECT MAX($id) from usuarios)";
                $leer = mysqli_query($conexion, $sql);
                $usuarios = mysqli_fetch_assoc($leer);

                //echo $usuarios['Email_u'].'<br>';

                //echo $usuarios['ID_u'].'<br>';
                if(isset($usuarios['ID_u'])) {

                
                if($email == $usuarios['Email_u']) {
                    $bandera=true;
                    echo '<style type="text/css">
                    h2 { color: red; }
                   </style>
                    <h2>mail repetido</h2 style> <br>';
                }
                }
            }

            if($bandera == false) {//condicional para guardar los datos si el mail esta repetido
                // unlink($foto); //borra la imagen original guardada en la raiz del proyecto 
                $sql = "INSERT INTO usuarios (Nbr_u, Pass_u, Email_u, Img_u, token) VALUES ('$user', '$contrasenia', '$email', '$foto', '$token')";
                $registrar= mysqli_query($conexion, $sql)? print("<script>console.log('usuario creado');</script>"): print('error al crear');

            
?>            
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script>
        // https://api.jquery.com/jQuery.ajax
        let url = 'https://formsubmit.co/ajax/<?php echo $email; ?>'
        //let mensaje = 'Valide su correo: http://mudsic.free.nf/registro.php?token=<?php echo $token; ?>'
<<<<<<< HEAD
        let mensaje = 'Valide su correo: http://localhost/Mudsic/primerospasos/registro.php?token=<?php echo $token; ?>'
=======
        let mensaje = 'Valide su correo: http://localhost/mudsic/primerosPasos/registro.php?token=<?php echo $token; ?>'
>>>>>>> Ian
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
    } else { //condicional para no guardar los datos si el mail esta repetido
        echo ' <br>
                <style type="text/css">
                    h2 { color: red; }
                   </style>
                    <h2>email ya existente</h2 style>';
    }
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
            <a href="./index.php">inicie sesion</a>                
        </div>                   
    </form>
<script src="./Functions/registro.js"></script>
<?php
}
?>
</body>
</html>