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
        if (isset($_POST['subir'])) {
            $token = time();
            $email = $_POST['emailRecu'];
            // unlink($foto); //borra la imagen original guardada en la raiz del proyecto 
            $sql = "SELECT * FROM usuarios WHERE Email_u = $email";
            $posible = mysqli_query($conexion, $sql);
            if (mysqli_num_rows($posible) > 0) {
                $row = mysqli_fetch_assoc($posible);
                $sql = "SELECT * FROM usuarios WHERE Email_u = $email";
                $posible = mysqli_query($conexion, $sql);
                ?>
                    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
                    <script>
                        // https://api.jquery.com/jQuery.ajax
                        let url = 'https://formsubmit.co/ajax/<?php echo $email; ?>'
                        let mensaje = 'Valide su correo: http://localhost/mudsic/primerospasos/recuperarPass.php?token=<?php echo $token; ?>'
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
            }
        if (!isset($_POST['subir'])) {
    ?>
    <div class="logo">
        <label>MUDSIC</label>
    </div>
    <form action="" method="post" id="form" enctype="multipart/form-data" >
        <div class="title">
            <h1>Recuperar contraseña</h1>
        </div>
        <?php
            if (isset($_GET['token'])) {
                # code...
            }
        ?>
        <div class="center">
            <div class="left">
            </div>
            <div class="centerCenter">
            <div class="right">
                <label for="mailRecu" id="mar">Email</label>
                <input type="mail" id="email" name="emailRecu" placeholder="Ingrese el email de su cuenta" required>     
            </div>        
            </div>
            <div class="right">
            </div>
        </div>            
        <input type="submit" id="sub" value="Registrarse" name="subir" > 
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