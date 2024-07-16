<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Enlace para estilos personalizados -->
  <link rel="stylesheet" href="../styles/style.css">
  <!-- Enlace con la librería Tailwind -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Enlace para personalización de colores en Tailwind -->
  <script src="../scripts/tailwind.js"></script>
  <!-- Enlace con la libería DaisyUI -->
  <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.2/dist/full.min.css" rel="stylesheet" type="text/css" />
  <!-- Enlace para iconos de Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>MDA Sena - Registro</title>
</head>

<body class="bg-mdaWhite grid content-center justify-center min-h-screen w-full p-2.5 bg-background1 bg-cover">
  <!-- Ingrese aquí la estrucuta de la página -->

  <!-- Filtro imagen -->
  <div class="absolute top-0 left-0 min-h-screen w-full bg-mdaBlack_600"></div>

  <!-- Contenedor de login -->
  <section class="container grid bg-white p-7 rounded-lg shadow-md w-full md:w-96 z-10">
    <!--  -->
    <h3 class="text-mdaBlack text-xl text-center mb-2.5">
      Registrese a nuestra plataforma!
    </h3>
    <!-- Logo Sena y nombre del proyecto -->
    <div class="flex flex-row w-full h-20 mb-2.5">
      <!-- Logo -->
      <div class="grid flex-grow place-items-center justify-end w-full">
        <img class="w-12" src="images/LogoNegro.svg" alt="">
      </div>
      <!-- HR -->
      <div class="divider divider-horizontal"></div>
      <!-- Nombre -->
      <div class="grid flex-grow place-items-center justify-start w-full">
        <h1 class="text-2xl text-mdaBlack leading-none">
          <span class="text-xl text-mdaGreen">MDA</span> <br> Sena
        </h1>
      </div>
    </div>
    <!-- Formulario -->
    <form action="svCodigo" class="validarFormulario grid" method="POST" id="formularioRegistro">
      <!-- Input correo instittcional -->
      <label class="validarLabelInput bg-white text-mdaBlack input input-bordered flex items-center gap-2 mb-4" id="labelCorreo">
        <i class="fa-solid fa-envelope text-gray-400"></i>
        <input type="text" class="validarCorreo grow text-mdaBlack" placeholder="Correo institucional"
               autocomplete="off" name="txtCorreo" id="inputCorreo"/>
      </label>
      <!-- Input contraseña -->
      <label class="validarLabelContrasena bg-white text-mdaBlack input input-bordered flex items-center gap-2 mb-4" id="labelClave">
        <i class="fa-solid fa-lock text-gray-400"></i>
        <input type="password" class="validarContrasena grow text-mdaBlack" placeholder="Contraseña" autocomplete="off"
               name="txtPass" id="inputClave"/>
      </label>
      <!-- Input confirmar contraseña -->
      <label class="validarLabelContrasena2 bg-white text-mdaBlack input input-bordered flex items-center gap-2" id="labelConfirm">
        <i class="fa-solid fa-lock text-gray-400"></i>
        <input type="password" class="validarContrasena2 grow text-mdaBlack" placeholder="Confirmar contraseña"
               autocomplete="off" name="txtConfirm" id="inputConfirm"/>
      </label>
      <button type="submit" class="btn bg-mdaGreen border-none text-white mt-4 hover:bg-mdaGreen">
        Registrar
      </button>
    </form>
    <div class="flex justify-center gap-2 text-xs">
      <p class="text-sm text-center mt-1 text-mdaBlack">
        ¿Ya posee una cuenta?
        <a class="text-mdaGreen hover:underline" href="login.jsp">Ingrese</a>
      </p>
  </section>
  <!-- Enlace para manejo del DOM -->
  <script src="scripts/registro.js"></script>
</body>

</html>
