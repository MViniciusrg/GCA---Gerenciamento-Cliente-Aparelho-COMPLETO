<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes - GCA</title>
    <link rel="stylesheet" href="css/style_table.css">
</head>
<body>
    <?php
        include('header.php');
        include('verifica_bd.php');


        if(count($cliente_consulta) > 0){
            include('tabela_clientes.php');
        }
        else{
            echo "<h1>Nenhum cliente cadastrado</h1>";
        }
    ?>

    <br>

    

    <table></table>
</body>
</html>