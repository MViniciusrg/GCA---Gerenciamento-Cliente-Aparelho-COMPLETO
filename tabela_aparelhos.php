
<table id="tabela_clientes">

<tr>
    <th>Nome</th>
    <th>Descrição</th>
    <th>Entrada</th>
    <th>Marca</th>
    <th>CPF cadastrado</th>

</tr>

<?php
    for($i = 0; $i < count($aparelho_consulta); $i++){
        echo "<tr>
            <th>{$aparelho_consulta[$i]->nome}</th>
            <th>{$aparelho_consulta[$i]->descricao}</th>
            <th>{$aparelho_consulta[$i]->data_cadastro}</th>
            <th>{$aparelho_consulta[$i]->marcas_nome}</th>
            <th>{$cliente_consulta[$i]->cpf}</th>
        </tr>";
    }

?>


</table>

