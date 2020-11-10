
<table id="tabela_clientes">

    <tr>
        <th>Nome</th>
        <th>CPF</th>
        <th>Contato</th>

    </tr>

    <?php
        $last_cpf = "";
        for($i = 0; $i < count($cliente_consulta); $i++){
        
            if($last_cpf != $cliente_consulta[$i]->cpf){
                $last_cpf = $cliente_consulta[$i]->cpf;
                echo "<tr>
                    <th>{$cliente_consulta[$i]->nome}</th>
                    <th>{$cliente_consulta[$i]->cpf}</th>
                    <th>{$cliente_consulta[$i]->contato}</th>
                </tr>";
            }
        }

        include('conection.php');

        try{
            

            
        } catch(PDOException $e){
            die('Erro de comunicação com o MySQL: ' . $e->getMessage());
        }
            
            


    ?>


</table>

