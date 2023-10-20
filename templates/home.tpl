<!DOCTYPE html>
<html lang="es">

<head>
  <base href="{BASE_URL}">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

  <meta name="keywords"
    content="invitaciones, digitales, tarjetas, boda, invitación, interactivas, casamiento, save the date, agenda la fecha, ideas invitación, tarjetas de 15, tarjetas eventos, wedding, matrimonio, ideas tarjetas, rsvp, modelos de invitacion, página de boda, página web de casamiento" />

  <!-- Listado de css con version dinamica segun modificacion de archivo -->
  <link rel="stylesheet" href="./files/bootstrap.min.css" />
  <link rel="stylesheet" href="./files/jquery.classycountdown.css" />
  <link rel="stylesheet" href="./files/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="./files/styles.css" />
  <!-- Font -->
  <link href="./files/css2.css" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com/" />
  <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="" />
  <link href="./files/css2(1).css" rel="stylesheet" />
  <!-- Family Satisfy -->
  <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet" />

  <!-- Font Awesome -->
  <link href="./files/all.min.css" rel="stylesheet" />

  <!-- Title -->
  <title>Invitación EstefiyFede</title>
  <link rel="icon" href="./files/icono_bodaanillo1.png" type="image/x-icon" />
</head>

<body>
  <div class="parallax-mirror" style="
        visibility: visible;
        z-index: -100;
        position: fixed;
        top: 0px;
        left: 0px;
        overflow: hidden;
        transform: translate3d(0px, 0px, 0px);
        height: 100vh;
        width: 100vw;
      ">
    <img class="parallax-slider img-eucalipto" src="./files/portada-01-der.png" style="
          object-fit: cover;
          position: absolute;
          height: auto;
          width: 40vw;
          max-width: none;
          top: 0;
          left: 0;
        " />
    <!-- object-fit: cover;
          position: absolute;
          height: 100vh;
          max-width: none;
          width: 100%; -->
    <img class="parallax-slider img-eucalipto" src="./files/portada-01-izq.png" style="
          object-fit: cover;
          position: absolute;
          height: auto;
          width: 30vw;
          max-width: none;
          bottom: 0;
          right: 0;
        " />
  </div>

  <!-- Portada -->
  <section class="portada parallax-portada d-flex justify-content-center align-items-center">
    <!-- Logo central -->
    <div class="logo-portada fade-in d-flex justify-content-center align-items-center">
      <img class="img-estefifede" src="./files/estefi y fede nos casamos-01.png" alt="Nuestros nombres" width="65%"
        height="auto" />
      <!-- <div class="d-flex justify-content-center align-items-center flex-column">

          <h1 class="title-presentation">Estefi</h1>
          <h1 class="title-presentation">y</h1>
          <h1 class="title-presentation">Fede</h1>
        </div> -->
      <div class="scroll-down"></div>
    </div>
  </section>

  <!-- Frase -->
  <section class="frase">
    <div class="container">
      <img src="./files/icono_gran_dia.png" alt="" class="icon" />
      <h4>LLEGA EL GRAN DÍA</h4>

      <p>
        Y nos gustaría compartirlo junto a vos.
      </p>

      <section class="cuenta-regresiva">
        <div class="container">
          <!-- Contenedor de cuenta regresiva -->
          <div class="reloj">
            <div class="countdown">
              <div class="ClassyCountdown-wrapper">

              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </section>

  <!-- Cuenta Regresiva -->
{*   <section class="cuenta-regresiva">
    <div class="container">
      <div class="reloj">
        <div class="countdown">
          <div class="ClassyCountdown-wrapper">

          </div>
        </div>
      </div>
    </div>
  </section> *}

  <!-- Nuestra Boda -->
  <section class="nuestraboda">
    <div class="container">
      {* <img src="./files/icono_boda.png" alt="" class="icon" /> *}
      <img src="./files/icono_bodaanillo1.png" alt="" class="icon animate1" />
      <img src="./files/icono_bodaanillo2.png" alt="" class="icon animate2" />
      <h4 class="m-0 p-0">NUESTRA BODA</h4>
    </div>
  </section>
  <!-- Ceremonia y Fiesta -->
  <section class="ceremonia-fiesta">
    <div class="container">
      <div class="row">
        <!-- Ceremonia -->
        <div class="col-md-12 columna">
          <h2>Ceremonia y Fiesta</h2>
          <p>
            08 de Diciembre de 2023<br />
            18:00 horas<br />
            Sociedad Rural<br />
            Tres Arroyos, Buenos Aires.
          </p>
          <img src="./files/icono_ubicacion.png" alt="" class="icon animateUbicacion" />
          <br />
          <a target="_blank"
            href="https://www.google.com/maps/dir//-38.3594172,-60.281316/@-38.3589445,-60.2812458,439m/data=!3m1!1e3!4m2!4m1!3e0"
            class="btn">Cómo llegar</a>
        </div>
      </div>
    </div>
  </section>
  <!-- RSVP -->
  <section class="confirmar-asistencia">
    <div class="containter">
      <h4>Confirmación de asistencia</h4>
      <p>Esperamos que puedas acompañarnos. ¡Confirmanos tu asistencia!</p>
      <!--   <a
         target="_blank"
         href="https://docs.google.com/forms/d/e/1FAIpQLSe9YQMx7pJ7roFnvzgB353ytHGRUEOI_339DoK6--8r9jtZwg/viewform"
         class="btn"
         >Confirmar asistencia</a
       > -->
      <button type="button" class="btn btn-alt" data-toggle="modal" data-target="#ModalAsistencia">
        Confirmar asistencia
      </button>

      <!-- Modal -->
      <div class="modal" id="ModalAsistencia" tabindex="-1" role="dialog" aria-labelledby="ModalAsistencia"
        aria-hidden="true">
        <div class="modal-dialog text-left" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h6 class="modal-title">Confirmar Asistencia</h6>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            {* <form class="p-2" action="guardar_invitado" method="POST"> *}
            <form id="form-confirmation" class="p-2">
              <div class="form-group">
                <label for="nombre" class="small">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required
                  autocomplete="off" />
              </div>
              <div class="form-group">
                <label for="apellido" class="small">Apellido</label>
                <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido" required
                  autocomplete="off" />
              </div>
              <div class="form-group">
                <p class="mb-0 small">Asistencia</p>
                <input type="radio" name="confirmar" value="1" checked /> Si, confirmo
                <br />
                <input type="radio" name="confirmar" value="0" /> No podré asistir
              </div>
              <div class="form-group d-none" id="invitados">
                <label for="acompaniantes" class="small">Indicar Nombre y Apellido de Acompañante/s invitado/s (según
                  corresponda)</label>
                <textarea class="form-control" id="acompaniantes" name="acompaniantes" rows="2"
                  placeholder="Acompañantes"></textarea>
              </div>
              <div class="form-group">
                <label for="comida" class="small">¿Tenes alguna restricción de comida? Contanos</label>
                <textarea class="form-control" id="comida" name="comida" rows="2" placeholder="Comida"></textarea>
              </div>
              <div>
                <div id="alert" class="alert alert-danger d-none" role="alert">
                  No te encuentras en la lista de invitados, por favor revisa tus datos
                </div>
                <div id="confirm" class="alert alert-success d-none" role="alert">

                </div>
                <input id="id" type="hidden" name="id" value="0">
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Cerrar</button>
                  <input type="submit" class="btn btn-secondary  btn-sm" value="Enviar" disabled="true">
                </div>
            </form>
          </div>
        </div>
      </div>
  </section>
  <section class="agenda">
    <img src="./files/icono_fecha.png" alt="" class="icon animateFecha" />

    <br />
    <a target="_blank"
      href="https://calendar.google.com/calendar/event?action=TEMPLATE&amp;tmeid=M3Zra3ZvYmN1MTcybHI1MGV0ZW1uYTA3YmwgZmRjcmVzcGlAbQ&amp;tmsrc=fdcrespi%40gmail.com"
      class="btn">
      Agendar evento
    </a>

  </section>
  <section class="dresscode">
    <img src="./files/icono_dresscode.png" alt="" class="icon animateDress" />
    <h4>Dress Code:</h4>
    <p>
      Elegante sport. <br />
      Nuestro casamiento será al aire libre.
    </p>
    </div>
  </section>

  <!-- Instagram -->
  <section class="instagram">
    <div class="container">
      <img src="./files/icono_hashtag.png" alt="" class="icon animateInstagram" />
      <br />
      <h4><span class="hashtag">#EstefiyFede</span></h4>
      <p>
        ¡Preparate para nuestro gran día! <br />
        Etiquetanos en Instagram con nuestro
        <a target="_blank" href="https://www.instagram.com/explore/tags/estefiyfede/">#hashtag</a>
        en tus fotos o videos.
      </p>

      <a target="_blank" href="https://www.instagram.com/explore/tags/estefiyfede/" class="btn">Ver fotos instagram</a>
    </div>
  </section>

  <!-- Galeria -->
  <section class="galeria">
    <div class="container">
      <h4>NOSOTROS<br />♥</h4>
      <p>Cada historia de amor es diferente, ¡pero la nuestra es única!</p>
      <div class="row">
        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/01.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/01.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/02.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/02.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/03.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/03.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/04.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/04.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/05.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/05.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/06.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/06.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/07.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/07.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/08.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/08.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/09.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/09.jpg" alt="" />
          </a>
        </div>

        <!-- Impmrimo el bloque con la imagen -->
        <div class="col-6 col-md-2-4 item-galeria">
          <a href="./files/images/10.jpg" data-fancybox="images" data-caption="">
            <img class="img-fluid" src="./files/images/10.jpg" alt="" />
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- CBU -->
  <section class="cbu">
    <div class="container">
      <img src="./files/icono_regalo.png" alt="" class="icon animateRegalo" />
      <p>
        ¡El mejor regalo es tu presencia!<br />
        Pero si querés, podés ayudarnos con nuestra luna de miel...

      </p>
      {*  <a data-fancybox="" data-src="#hidden-cbu" href="javascript:;" data-options='{"touch" : false}'
        class="btn btn-alt">Ver más</a> *}
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-alt" data-toggle="modal" data-target="#exampleModal">
        Ver más
      </button>

      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Datos Bancarios</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <ul>
                <li>
                  <ul>
                    Titulares:
                    <li>♥ DEL CANTO ESTEFANIA 27350764653</li>
                    <li>♥ CRESPI FEDERICO 20353341856</li>
                  </ul>
                </li>
                <div class="text-left">
                  <li>CBU: 0110526130052613698629</li>
                  <li>Alias: estefiyfede</li>
                  <li>Banco Nación</li>
                </div>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Canciones -->
  <section class="canciones parallax-canciones d-flex justify-content-center align-items-center">
    <div class="container d-flex justify-content-center align-items-center">
      <div class="canciones-inner p-20">
        <img src="./files/icono_musica.png" class="icon icon-music" alt="" />
        <h4>¡FIESTA!</h4>
        <p>
          ¿Qué canciones no pueden faltar en la fiesta?<br />
          ¡Queremos crear una lista inolvidable!
        </p>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCancion">
          Sugerir canción
        </button>

        <!-- Modal -->
        <div class="modal fade" id="modalCancion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Sugerir canción</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">


                <form class="form" action="insertarCancion" method="POST">
                  <div class="form-group text-center m-0">
                    <input type="text" class="form-control mb-2" id="titulo" name="titulo"
                      placeholder="Titulo canción" />
                    <input type="submit" class="btn btn-secondary btn-sm">
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Gracias -->
  <section class="gracias">
    <div class="container">
      <p>♥<br />¡Gracias por acompañarnos en este momento tan importante!</p>
    </div>
  </section>

  <section class="footer">
    <div class="containter">
      <p>
        Fede Crespi
        2023. Todos los derechos reservados
      </p>
    </div>
  </section>

  <script>
    let listaInvitados = [];
    document.addEventListener('DOMContentLoaded', async function() {
      // obtener los invitados para corroborar si ya confirmaron asistencia
      listaInvitados = await obtenerInvitados();

      // Agrega un evento de desplazamiento para llamar a handleScroll cuando el usuario se desplaza
      window.addEventListener("scroll", handleScroll);
    });
    // obtener los invitados para corroborar si ya confirmaron asistencia
    async function obtenerInvitados() {

      /* $.ajax({
        url: 'obtener_invitados',
        type: 'POST',
        dataType: 'json',
        success: function (data) {
          if (data.length > 0) {
            $('#invitados').removeClass('d-none');
          }
          console.log(data);
        }
      }); */
      const response = await fetch('obtener_invitados');
      if (!response.ok) {
        throw new Error(`HTTP error!`);
      }
      const data = await response.json();
      if (data.length > 0) {
        return data;
      } else {
        return [];
      }
    }

    const inputName = document.getElementById('nombre');
    const inputLastName = document.getElementById('apellido');
    const inputInvitados = document.querySelector('#invitados');


    inputName.addEventListener('keyup', function() {
      inputName.value = inputName.value.toUpperCase();
    });

    inputLastName.addEventListener('keyup', function() {
      inputLastName.value = inputLastName.value.toUpperCase();
    });

    inputLastName.addEventListener('blur', function() {
      if (inputLastName.value === '' || inputName.value === '') {
        return;
      }
      const personaInvitada = listaInvitados.find(persona => persona.apellido.toUpperCase().includes(inputLastName
        .value.split(' ')[0]) && persona.nombre.toUpperCase().includes(inputName.value.split(' ')[0]));
      if (!personaInvitada) {
        document.querySelector('#alert').classList.remove('d-none');
        document.querySelector('input[type="submit"]').disabled = true;
        return;
      } else {
        document.querySelector('#alert').classList.add('d-none');
        document.querySelector('input[type="submit"]').disabled = false;
        document.querySelector('#id').value = personaInvitada.id;
        if (personaInvitada.compania == 1) {
          inputInvitados.classList.remove('d-none');
        } else {
          inputInvitados.classList.add('d-none');
        }
      }
    });

    // evento para el formulario de confirmacion de asistencia
    const formConfirmation = document.getElementById('form-confirmation');
    formConfirmation.addEventListener('submit', function(e) {
      e.preventDefault();
      const formData = new FormData(formConfirmation);
      const data = Object.fromEntries(formData);
      guardarInvitado(data);
    });


    // guardar invitado
    async function guardarInvitado(data) {

      const response = await fetch(`confirmarInvitado`, {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          id: data.id,
          acompaniantes: data.acompaniantes,
          comida: data.comida,
          asistencia: data.confirmar
        }),
      });
      if (!response.ok) {
        throw new Error(`HTTP error!`);
      }
      const dataResponse = await response.json();
      document.querySelector('#confirm').classList.remove('d-none');
      document.querySelector('#confirm').innerHTML = 'Gracias por confirmar tu asistencia';
    }

    // Función para verificar si el elemento está en el área visible
    function isElementInViewport(el) {
      var rect = el.getBoundingClientRect();
      return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
      );
    }

    // Función para activar la animación cuando el elemento está en la vista
    function handleScroll() {
      var image = document.querySelector(".animate1");
      const image2 = document.querySelector(".animate2");
      const imageUbicacion = document.querySelector(".animateUbicacion");
      const imageFecha = document.querySelector(".animateFecha");
      const imageDress = document.querySelector(".animateDress");
      const imageInstagram = document.querySelector(".animateInstagram");
      const imageRegalo = document.querySelector(".animateRegalo");
      if (isElementInViewport(image)) {
        image.classList.add("active");
        image2.classList.add("active");
      }
      if (isElementInViewport(imageUbicacion)) {
        imageUbicacion.classList.add("active");
      }
      if (isElementInViewport(imageFecha)) {
        imageFecha.classList.add("active");
      }
      if (isElementInViewport(imageDress)) {
        imageDress.classList.add("active");
      }
      if (isElementInViewport(imageInstagram)) {
        imageInstagram.classList.add("active");
      }
      if (isElementInViewport(imageRegalo)) {
        imageRegalo.classList.add("active");
      }
    }



  </script>

  {include file='footer.tpl'}
</body>

</html>