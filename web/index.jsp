<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Enlace para estilos personalizados -->
  <link rel="stylesheet" href="styles/style.css">
  <!-- Enlace con la librería Tailwind -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Enlace para personalización de colores en Tailwind -->
  <script src="scripts/tailwind.js"></script>
  <!-- Enlace con la libería DaisyUI -->
  <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.2/dist/full.min.css" rel="stylesheet" type="text/css" />
  <title>MDA Sena - Inicio</title>
</head>

<body class="flex bg-mdaWhite bg-gradient-to-t from-mdaGreen_400 to-mdaWhite">

  <!-- Ingrese aquí la estrucuta de la página -->

  <!-- Barra lateral izquierda -->
  <nav class="bg-white p-7 shadow-md sticky top-0 h-screen">
    <div class="grid gap-y-5">
      <!-- Logo Sena y nombre del proyecto -->
      <div class="flex flex-row w-full h-32">
        <!-- Logo -->
        <div class="grid flex-grow place-items-center w-full">
          <img src="images/LogoNegro.svg" alt="">
        </div>
        <!-- HR -->
        <div class="divider divider-horizontal"></div>
        <!-- Nombre -->
        <div class="grid flex-grow place-items-center w-full">
          <h1 class="text-4xl text-mdaBlack leading-none">
            <span class="text-3xl text-mdaGreen">MDA</span> <br> Sena
          </h1>
        </div>
      </div>
      <!-- HR -->
      <div class="flex flex-col w-full">
        <div class="divider m-0 h-0"></div>
      </div>
      <!-- Input de búsqueda -->
      <form action="">
        <label class="input input-bordered flex items-center gap-2 bg-white">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="w-4 h-4 opacity-70">
            <path fill-rule="evenodd"
              d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z"
              clip-rule="evenodd" />
          </svg>
          <input type="text" class="grow text-mdaBlack" placeholder="Search" />
        </label>
      </form>
      <!-- HR -->
      <div class="flex flex-col w-full">
        <div class="divider m-0 h-0"></div>
      </div>
      <!-- Botones -->
      <div>
        <!-- Botón para iniciar sesión -->
        <a href="views/login.jsp">
          <button class="btn w-full mb-2.5 bg-mdaGreen border-none text-white hover:bg-mdaGreen">
            Ingrese
          </button>
        </a>
        <!-- Botón para registrrse -->
        <a href="views/registro.jsp">
          <button class="btn w-full border-mdaBlack bg-white text-mdaBlack hover:bg-white">
            Regístrese
          </button>
        </a>
      </div>
    </div>
  </nav>
  <!-- Contenedor para los artículos -->
  <section class="m-auto flex w-full max-w-screen-2xl min-h-screen justify-center p-5 gap-5 flex-wrap content-start">
    <!-- Artículo -->
    <article class="bg-white w-full max-w-2xl h-40 shadow-md rounded-lg p-5 flex flex-col justify-between">
      <div class="text-mdaBlack text-sm">
        <p><b>Nombre aprendiz</b></p>
      </div>
      <div class="text-mdaGreen">
        <h2 class="text-4xl mb-2 truncate" title="TITULO DEL POST 1">
          <b>TITULO DEL POST 1</b>
        </h2>
        <a class="text-base hover:underline" href="#">Nombre del documento.docx
          <i class="fa-solid fa-arrow-down"></i>
        </a>
      </div>
    </article>
  </section>

  <!-- Enlace para manejo del DOM -->
  <script src="scripts/script.js"></script>

</body>
</html>
