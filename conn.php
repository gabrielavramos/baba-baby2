<?php
//session_start(); // Inicia a sessão
//define("BASE_URL","http://localhost/baba-baby2/");
//define("BASE_URL_INDEX","http://localhost/baba-baby2/index.php");
//define("BASE_URL_PAIS","http://localhost/baba-baby2/menuPais.php");
//define("BASE_URL_BABA","http://localhost/baba-baby2/menuBaba.php");
//define("BASE_URL_ADMIN","http://localhost/baba-baby2/menuAdmin.php");

$db_name = 'babababy_';
$db_host = '127.0.0.1';
$db_port = '3306';
$db_user = 'root';
$db_password = '';

try
{
    $pdo = new PDO("mysql:host=$db_host;port=$db_port;dbname=$db_name", $db_user, $db_password);
}catch(Exception $e){
    echo "Erro ao carregar página: ".$e->getMessage();
}

?>
