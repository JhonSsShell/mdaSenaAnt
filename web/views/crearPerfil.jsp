<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Enlace para estilos personalizados -->
    <link rel="stylesheet" href="../../styles/style.css" />
    <!-- Enlace con la librería Tailwind -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Enlace para personalización de colores en Tailwind -->
    <script src="../../scripts/tailwind.js"></script>
    <!-- Enlace con la libería DaisyUI -->
    <link
      href="https://cdn.jsdelivr.net/npm/daisyui@4.12.2/dist/full.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <!-- Enlace para iconos de Font Awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <title>MDA Sena - Inicio</title>
  </head>

  <body
    class="bg-mdaWhite grid content-center justify-center min-h-screen w-full p-2.5"
  >
    <!-- Ingrese aquí la estrucuta de la página -->

    <!-- Contenedor de login -->
    <section class="grid bg-white p-7 rounded-lg shadow-md max-w-96 w-full">
      <!--  -->
      <h3 class="text-mdaBlack text-xl text-center mb-2.5">
        Bienvenido, ingrese los siguiente datos y cree su perfil
      </h3>
      <!-- Logo Sena y nombre del proyecto -->
      <div class="flex flex-row w-full h-20 mb-2.5">
        <!-- Logo -->
        <div class="grid flex-grow place-items-center justify-end w-full">
          <img class="w-12" src="../images/LogoNegro.svg" alt="" />
        </div>
        <!-- HR -->
        <div class="divider divider-horizontal"></div>
        <!-- Nombre -->
        <div class="grid flex-grow place-items-center justify-start w-full">
          <h1 class="text-2xl text-mdaBlack leading-none">
            <span class="text-xl text-mdaGreen">MDA</span> <br />
            Sena
          </h1>
        </div>
      </div>
      <form action="" class="grid">
        <!-- Nombre -->
        <label
          class="bg-white text-mdaBlack input input-bordered flex items-center gap-2 mb-4"
        >
          <i class="fa-solid fa-user"></i>
          <input type="text" class="grow text-mdaBlack" placeholder="Nombre" />
        </label>
        <!-- Apellidos -->
        <label
          class="bg-white text-mdaBlack input input-bordered flex items-center gap-2 mb-4"
        >
          <i class="fa-solid fa-user"></i>
          <input
            type="text"
            class="grow text-mdaBlack"
            placeholder="Apellidos"
          />
        </label>
        <!-- Número de documento -->
        <label
          class="bg-white text-mdaBlack input input-bordered flex items-center gap-2 mb-4"
        >
          <i class="fa-solid fa-id-card"></i>
          <input
            type="text"
            class="grow text-mdaBlack"
            placeholder="Número de documento"
          />
        </label>
        <!-- Centro de formación -->
        <label
          class="bg-white text-mdaBlack input input-bordered flex items-center gap-2"
        >
          <i class="fa-solid fa-hospital"></i>
          <input
            type="text"
            class="grow text-mdaBlack"
            placeholder="Centro de formación"
          />
        </label>
        <button
          class="btn bg-mdaGreen border-none text-white mt-4 hover:bg-mdaGreen"
        >
          Crear perfil
        </button>
      </form>
      <h1>
          <%
              HttpSession sesionPerfil = request.getSession(false);
              if (sesionPerfil != null) {
                      String emailAprendiz = (String) sesionPerfil.getAttribute("UsuarioAprendiz");
                      out.println("<p>Correo del usuario: " + emailAprendiz + "</p>");
                  }
          %>
      </h1>
      
    </section>
    <!-- Enlace para manejo del DOM -->
    <script src="../scripts/script.js"></script>
  </body>
</html>

