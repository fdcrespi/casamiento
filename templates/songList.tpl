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

    <main class="container p-5"> <!-- inicio del contenido pricipal -->
        <h2>Lista de canciones</h2>
        <ul class='list-group mt-2'>
            {foreach from=$songs item=song}
                <li class='list-group-item d-flex justify-content-between'>
                  {$song->titulo}
                </li>    
            {/foreach}
        </ul> 
    </main>
    {include file='footer.tpl'}
</body>
</html>    
