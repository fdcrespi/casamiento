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
        
        <h1> ERROR!</h1>
        <h2> {$msg} </h2>
    </main> <!-- fin del contenido principal -->
    
{include 'footer.tpl'}

</body>
</html>