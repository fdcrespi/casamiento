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

        <div class="mt-5 w-25 mx-auto">
            <form method="POST" action="verify">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>

                {if $error}
                <div class="alert alert-danger">
                    {$error}
                </div>
                {/if}
                
                <button type="submit" class="btn btn-primary">Entrar</button>
            </form>
        </div>

    </main>
    {include file='footer.tpl'}

</body>
</html>


