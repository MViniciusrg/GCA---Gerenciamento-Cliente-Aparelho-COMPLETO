<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GCA - Gerenciamento Inteligente</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <?php
        include('header.php');
        include('bd_load.php');
    ?>

    <div id="bg">
        <div id="titleBox">
            <h1>Cadastro</h1>
            <h2>Dados do cliente e do aparelho </h2>
        </div>
        <div id="gradient"></div>
        <img src="img/bg-1.png" alt="">
    </div>

    <div id="no-bg">


        <form id="cadastro" name="cadastro" method="post" action="cadastra_bd.php">

            <div id="deviceBox">
                <select name="marcasSelect" class="inputDevice" id="marcasSelect" onchange="change()">
                    <?php
                        $i = 0;
                        foreach($marcasLista as $marca){
                            $i++;    
                            echo "<option value = {$i}>{$marca}</option>";
                        }
                    
                    ?>
            </select>

                <select class="inputDevice" name="inputDevice" id="modelos">
                
                    <?php
                        $j = -1;

                        foreach($modelosLista["nome"] as $modelo){
                            $j++;
                            echo "<option value = {$modelosLista['idmarca'][$j]}>{$modelo} </option>" ;
                        }
                        
                    ?>

                </select>

            </div>

            <div id="clientBox">

                    <label for="nameId">Nome</label>

                <input type="text" id="nameId" name="clientName" class="textInput" placeholder="Insira o nome completo">
                    <label for="cpfId">CPF</label>

                <input type="text" id="cpfId" name="clientCpf" class="textInput" placeholder="Insira o CPF" maxlength="11">
                    
                    <label for="numberId">Contato</label>

                <input type="text" id="numberId" name="clientNumber" class="textInput" placeholder="Insira um número para contato" maxlength="11">


            </div>

            <input maxlength="100" type="text" name="description" id="description" placeholder="Descrição do defeito">

            <input id="submitBtn" type="submit" value="Finalizar cadastro" >
        </form>
        
    </div>
    


    <script src="js/script.js"></script>
</body>
</html>