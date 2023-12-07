<?php
    include('conexion.php');
    if(session_status() !== PHP_SESSION_ACTIVE) {
        if (session_start()) {
            if (isset($_SESSION['userId'])) {
                $userId = $_SESSION['userId'];
            }else{
                session_abort();
            }

        }
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>aaa</title>
</head>
<body>
    <?php
        if (isset($_SESSION['userId'])) {
            echo '
                <div id="homeSec" ></div>
            ';
        }
    ?>
</body>
</html>