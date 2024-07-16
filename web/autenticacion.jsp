<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Enlace para estilos personalizados -->
  <link rel="stylesheet" href="styles/style.css" />
  <!-- Enlace con la librería Tailwind -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Enlace para personalización de colores en Tailwind -->
  <script src="scripts/tailwind.js"></script>
  <!-- Enlace con la libería DaisyUI -->
  <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.2/dist/full.min.css" rel="stylesheet" type="text/css" />
  <!-- Enlace para iconos de font awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>MDA Sena - Autenticación</title>
</head>

<body class="bg-mdaWhite grid content-center justify-center min-h-screen w-full p-2.5 bg-background3 bg-cover">
  <!-- Ingrese aquí la estrucuta de la página -->

  <!-- Filtro imagen -->
  <div class="absolute top-0 left-0 min-h-screen w-full bg-mdaBlack_600"></div>

  <section class="container grid bg-white p-7 rounded-lg shadow-md w-full md:w-96 z-10">
    <h3 class="text-mdaBlack text-xl text-center mb-1.5">
      Autenticación de cuenta
    </h3>
    <p class="text-center flex justify-center mb-2.5">
      Ingrese el código de verificación <br />
      enviado al correo registrado
    </p>
    <form action="svRegistro" class="validarFormulario grid" method="POST" id="formularioCodigo">
        <label class="validarLabelCodigo bg-white text-mdaBlack input input-bordered flex items-center gap-2" id="labelCodigo">
        <i class="fa-solid fa-unlock-keyhole text-gray-400"></i>
        <input type="text" class="validarCodigo grow text-mdaBlack" placeholder="Código de verificación" autofocus
               name="txtCodigo" id="inputCodigo" maxlength="6"/>
      </label>
      <button type="submit" class="btn bg-mdaGreen border-none text-white mt-4 hover:bg-mdaGreen">
        Verificar
      </button>
    </form>
  </section>
  <!-- Enlace para manejo del DOM -->
  <script src="scripts/autenticacion.js"></script>
</body>

</html>