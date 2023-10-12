<?php
include('./Functions/conexion.php');
session_start();
    if (isset($_GET['token'])) {
            $token = $_GET['token'];
            $sql = "SELECT * FROM usuarios WHERE token='$token'";
            $consulta = mysqli_query($conexion, $sql);
            if (mysqli_num_rows($consulta) > 0) {
                // $sql = "UPDATE usuarios SET token='ok' WHERE token='$token'";
                // $actualizar = mysqli_query($conexion, $sql);
                $row = mysqli_fetch_assoc($consulta);
                $_SESSION['user'] = $row['Nbr_u'];
                $_SESSION['userId'] = $row['ID_u'];
                $_SESSION['newPass'] = $row['ID_u'];
                $_SESSION['img'] = $row['Img_u'];
            }else{
                echo 'el token no existe, registrese';
                session_destroy();
            }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperar Contraseña - Mudsic</title>
    <link rel="stylesheet" href="estilos/registro.css">
</head>
<body>
<?php
    if (isset($_GET['send'])) {
        if ($_GET['send'] == 1) {
            echo 'Correo enviado, por favor valide';
        }else{
            echo 'error al enviar correo de validacion';
        }
    }
    if (isset($_POST['newPass'])) {
        $contrasenia = $_POST['passRecu'];
        $contrasenia2 = $_POST['passRecu2'];
        if ($contrasenia == $contrasenia2) {
            $pass = password_hash($contrasenia, PASSWORD_DEFAULT);
            $sql = "UPDATE usuarios SET Pass_u='$pass' WHERE ID_u='$user'";
            $actualizar = mysqli_query($conexion, $sql);
            $sql = "UPDATE usuarios SET token='ok' WHERE token='$token'";
            $actualizar = mysqli_query($conexion, $sql);
            header('location: index.php');
            // echo 'contraseña cambiada';
        }else{
            echo 'contraseñas distintas';
        }
    }
        if (isset($_POST['subir']) && !isset($_GET['token'])) {
            $token = time();
            $email = $_POST['emailRecu'];
            $sql = "SELECT * FROM usuarios WHERE Email_u = '$email'";
            $posible = mysqli_query($conexion, $sql);
            if (mysqli_num_rows($posible) > 0) {
                $sql = "UPDATE usuarios SET token='$token' WHERE Email_u='$email'";
                $actualizar = mysqli_query($conexion, $sql);
                ?>
                    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
                    <script>
                        // https://api.jquery.com/jQuery.ajax
                        let url = 'https://formsubmit.co/ajax/<?php echo $email; ?>'
                        let mensaje = 'Valide su correo para recuperar su contraseña: http://localhost/mudsic/primerospasos/recuperarPass.php?token=<?php echo $token; ?>'
                        $.ajax({
                            method: 'POST',
                            url: url,
                            dataType: 'json',
                            accepts: 'application/json',
                            data: {
                                name: '<?php echo $user; ?>',
                                message: mensaje
                            },
                            success: (data) =>  window.location = 'recuperarPass.php?send=1',
                            error: (err) => window.location = 'recuperarPass.php?send=0'
                        });
                    </script>
                <?php
            }
        }
        if (isset($_GET['token']) && !isset($_POST['subir'])) {
            $token = $_GET['token'];
            $sql = "SELECT * FROM usuarios WHERE token='$token'";
            $consulta = mysqli_query($conexion, $sql);
            ?>
            <div class="logo">
                <label>MUDSIC</label>
            </div>
                <form action="" method="post" id="form" enctype="multipart/form-data" >
                    <div class="title">
                        <h1>Nueva Contraseña</h1>
                    </div>
                    <div class="center">
                        <div class="centerCenter">
                            <label for="pass" id="mar">Ingrese la contraseña</label>
                            <input type="password" id="pass" name="passRecu" placeholder="Ingrese la contraseña nueva" required>
                            <label for="pass2" id="mar">Confirme la contraseña</label>
                            <input type="password" id="pass2" name="passRecu2" placeholder="Ingrese el contraseña ingresada" required> 
                            <input type="hidden" name="user" value="<?php 
                                    if (mysqli_num_rows($consulta) > 0) {
                                        $row = mysqli_fetch_assoc($consulta);
                                        echo $row['ID_u'];
                                        session_destroy();
                                    } ?>" >
                        </div>
                    </div>            
                    <input type="submit" id="sub" value="Cambiar contraseña" name="newPass" > 
                    <div class="bottom">
                        <label>¿ya tiene una cuenta?</label>
                        <a href="./index.php">inicie sesion</a>                
                    </div>                   
                </form>
            <?php
        }
if (!isset($_POST['subir'])  && !isset($_GET['token'])) {
    ?>
        <div class="logo">
            <label>MUDSIC</label>
        </div>
        <form action="" method="post" id="form" enctype="multipart/form-data" >
            <div class="title">
                <h1>Recuperar contraseña</h1>
            </div>
            <div class="center">
                <div class="centerCenter">
                    <label for="mailRecu" id="mar">Email</label>
                    <input type="mail" id="email" name="emailRecu" placeholder="Ingrese el email de su cuenta" required>     
                </div>
            </div>          
            <input type="hidden" name="subir">  
            <input type="submit" id="sub" value="Buscar cuenta" name="subir" > 
            <div class="bottom">
                <label>¿ya tiene una cuenta?</label>
                <a href="./index.php">inicie sesion</a>                
            </div>                   
        </form>
    <script src="./Functions/recuperarPass.js"></script>
    <?php
}
?>
</body>
</html>