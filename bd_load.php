<?php

include("conection.php");

try{
    $consulta = $conexao->prepare("SELECT * FROM marca");
    $consulta->execute();

    $marcas = $consulta->fetchAll(PDO::FETCH_OBJ);

    $marcasLista = array();

    foreach($marcas as $marca){
       $marcasLista[] = ($marca->nome);
    };


} catch(PDOException $e){
    die('Erro de comunicação com o MySQL: ' . $e->getMessage());
}

try{
    $consulta = $conexao->prepare("SELECT * FROM modelo");
    $consulta->execute();

    $modelos = $consulta->fetchAll(PDO::FETCH_OBJ);

    $modelosLista = array("nome", "idmarca");

    foreach($modelos as $modelo){
       $modelosLista["nome"][] = ($modelo->nome);
       $modelosLista["idmarca"][] = ($modelo->marca_idmarca);

    };

    



} catch(PDOException $e){
    die('Erro de comunicação com o MySQL: ' . $e->getMessage());
}

?>