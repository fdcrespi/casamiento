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
        <h2>Lista de invitados</h2>
        
        <table class="table table-sm">
            {assign var="confirmedCount" value=0} 
            {assign var="asistentCount" value=0} 
            <thead>
                <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">¿confirmo?</th>
                    <th scope="col">¿asistirá?</th>
                    <th scope="col">¿compañia?</th>
                    <th scope="col">acompaniantes</th>
                    <th scope="col">comida</th>
                    <th scope="col">eliminar</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$guests item=guest}
                <tr>
                    <th scope="row">{$guest->nombre} {$guest->apellido}</th>
                    <td>{if $guest->confirmado}si{else}no{/if}</td>
                    <td>{if $guest->asistencia}si{else}no{/if}</td>
                    <td>{if $guest->compania}si{else}no{/if}</td>
                    <td>{$guest->acompaniantes}</td>
                    <td>{$guest->comida}</td>
                    <td>
                        <a href="eliminar/{$guest->id}" class="btn btn-sm btn-outline-danger border-0 rounded-pill">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
                            </svg>
                        </a>
                    </td>
                </tr>
                {if $guest->confirmado}
                    {assign var="confirmedCount" value=$confirmedCount+1}
                {/if}
                {if $guest->asistencia}
                    {assign var="asistentCount" value=$asistentCount+1}
                {/if}
            {/foreach}
                <tr>
                    <th scope="row">TOTALES</th>
                    <td>{$confirmedCount}</td>
                    <td>{$asistentCount}</td>
                </tr>
            </tbody>
        </table>
    </main>
    {include file='footer.tpl'}
</body>
</html>    
