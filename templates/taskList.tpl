<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EstefiyFede</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

</head>
<body>

    {include 'header.tpl'}

    <main class="container"> <!-- inicio del contenido pricipal -->
        
        {include 'form_alta.tpl'}
        
        <ul class='list-group mt-5'>
            {foreach from=$tasks item=task}
            <li class='list-group-item d-flex justify-content-between'>
                <div class='info'>
                    <strong>{$task->titulo}</strong> | {$task->descripcion} | {$task->finalizada} 
                </div>

                <div class='actions'>
                    <a class='btn btn-success btn-sm' href="ver/{$task->id}">VER</a>
                    <a class='btn btn-info btn-sm' href="finalizar/{$task->id}">FINALIZAR</a>
                    <a class='btn btn-danger btn-sm' href="eliminar/{$task->id}">ELIMINAR</a>
                </div>
            </li>
            {/foreach}
        </ul>

    </main>
    {include file='footer.tpl'}
</body>
</html>    
