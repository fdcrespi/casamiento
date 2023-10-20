<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EstefiyFede</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

</head>
<body>

    {include 'header.tpl'}

    <main class="container"> <!-- inicio del contenido pricipal -->

        <h1>{$task->titulo}</h1>
        <p>{$task->descripcion}</p>
        <p>Prioridad: {$task->prioridad}</p>
        {if $task->finalizada == '1'}
            <p> Tarea finalizada </p>
        {else}
            <p> Tarea SIN finalizar </p>
        {/if}

        <a href="{BASE_URL}listar">volver</a>

    </main>

    {include file='footer.tpl'}

</body>
</html>