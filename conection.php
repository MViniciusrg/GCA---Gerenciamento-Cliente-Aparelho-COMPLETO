<?php 

    try{
        $conexao = new PDO("mysql:host=127.0.0.1;dbname=GCA", "root", "");

        $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conexao->exec('set names utf8');

    } catch(PDOException $e){
        die('Erro de comunicação com o MySQL: ' . $e->getMessage());
    }

    ?>