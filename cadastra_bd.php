<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> GCA - Cadastro concluído </title>
    <link rel="stylesheet" href="css/style_table.css">
</head>
<body>
<?php
    include('header.php');
    include("conection.php");

    /*Datetime*/
    

    if(isset($_POST["marcasSelect"]) && isset($_POST["inputDevice"]) && isset($_POST["clientName"]) && isset($_POST["clientCpf"]) && isset($_POST["clientNumber"]) && isset($_POST["description"]) ){
        
        try{
            
            $n = $_POST["clientNumber"];
            $n = str_pad($n, 11, 0, STR_PAD_LEFT);

            $c = $_POST["clientCpf"];
            $c = str_pad($c, 11, 0, STR_PAD_LEFT);

            date_default_timezone_set('America/Sao_Paulo');
            $timezone = date('Y-m-d H:i:s', time());

            $consulta = $conexao->prepare('INSERT INTO cliente (nome, cpf, contato) VALUES (:nome, :cpf, :contato)');

            $consulta->bindValue(':nome', $_POST['clientName']);
            $consulta->bindValue(':cpf', $c);
            $consulta->bindValue(':contato', $n);
            $consulta->execute();

        }
        catch(PDOException $e){
            die('Erro de comunicação com o MySQL: ' . $e->getMessage());
        }

        try{
            $consulta = $conexao->lastInsertId();

            $consulta1 = $conexao->prepare('INSERT INTO aparelho (nome, descricao, data_cadastro, cliente_idcliente, marca_idmarca) VALUES (:nome, :descricao, :data_cad, :cliente_idcliente, :marca_idmarca )');

            $consulta1->bindValue(':nome', $_POST['inputDevice']);
            $consulta1->bindValue(':descricao', $_POST['description']);
            $consulta1->bindValue(':data_cad', $timezone);
            $consulta1->bindValue(':cliente_idcliente', $consulta);
            $consulta1->bindValue(':marca_idmarca', $_POST["marcasSelect"]);
            $consulta1->execute();




        }catch(PDOException $e){
            die('Erro de comunicação com o MySQL: ' . $e->getMessage());
        }


    }

?>

    <h1>Cadastro realizado com sucesso.</h1>
</body>
</html>


