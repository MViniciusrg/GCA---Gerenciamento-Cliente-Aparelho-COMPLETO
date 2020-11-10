<?php
    include('conection.php');


    try{
        $consulta = $conexao->prepare('SELECT * FROM cliente');
        $consulta->execute();
        $cliente_consulta = $consulta->fetchAll(PDO::FETCH_OBJ);

        $consulta = $conexao->prepare('SELECT aparelho.*, marca.nome AS marcas_nome FROM aparelho
        JOIN marca ON aparelho.marca_idmarca = marca.idmarca');
        $consulta->execute();
        $aparelho_consulta = $consulta->fetchAll(PDO::FETCH_OBJ);

    } catch(PDOException $e){
        die('Erro de comunicação com o MySQL: ' . $e->getMessage());
    }
?>

