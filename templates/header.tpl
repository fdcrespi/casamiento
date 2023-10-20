    <header>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #4e8f50;">
            <a class="navbar-brand" href="#">{$title}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav d-flex w-100">
                <li class="nav-item active">
                  <a class="nav-link" href="" target="_blank">WEB invitado <span class="sr-only">(current)</span></a>
                </li>  
                {if isset($smarty.session.EMAIL_USER)}
                  <li class="nav-item active">
                    <a class="nav-link" href="invitados">Invitados</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="canciones">Canciones</a>
                  </li>
                 {*  <li class="nav-item active">
                    <a class="nav-link" href="login">Acompañantes</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link" href="login">Comidas</a>
                  </li> *}
                  <li class="nav-item ml-auto">
                    <a class="nav-link" href="logout">{$smarty.session.EMAIL_USER} (LOGOUT)</a>
                  </li>
                {/if}
              </ul>
            </div>
        </nav>
    </header>