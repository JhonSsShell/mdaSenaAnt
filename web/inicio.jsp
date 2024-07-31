<%@page import="modelo.objetos.Perfil"%>
<%@page import="modelo.objetos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    HttpSession sesion = request.getSession(false);
    HttpSession sesionPerfil = request.getSession(false);
    if (sesion == null || sesion.getAttribute("dataUser") == null) {
            response.sendRedirect("login.jsp");
            return;
    }
    Perfil perfil = (Perfil)  sesionPerfil.getAttribute("dataPerfil");
    Usuario user = (Usuario) sesion.getAttribute("dataUser");
%>
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
  <!-- Enlace para iconos de Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>MDA Sena - Inicio</title>
</head>

<body class="flex bg-mdaWhite bg-gradient-to-t from-mdaGreen_400 to-mdaWhite">
  <!-- Ingrese aquí la estrucuta de la página -->

  <!-- Barra lateral izquierda -->
  <nav class="bg-white p-7 shadow-md sticky top-0 h-screen z-10">
    <div class="grid gap-y-5">
      <!-- Logo Sena y nombre del proyecto -->
      <div class="flex flex-row w-full h-32">
        <!-- Logo -->
        <div class="grid flex-grow place-items-center w-full">
          <img src="images/LogoNegro.svg" alt="" />
        </div>
        <!-- HR -->
        <div class="divider divider-horizontal"></div>
        <!-- Nombre -->
        <div class="grid flex-grow place-items-center w-full">
          <h1 class="text-4xl text-mdaBlack leading-none">
            <span class="text-3xl text-mdaGreen">MDA</span> <br />
            Sena
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
          <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
          <input type="text" class="grow text-mdaBlack" placeholder="Search" />
        </label>
      </form>
      <!-- HR -->
      <div class="flex flex-col w-full">
        <div class="divider m-0 h-0"></div>
      </div>
      
      <%
          if ("Aprendiz".equals(user.getId_rol_fk().getNombre_rol())) {
      %>
      
      <!-- Botones navegación -->
      <div>
        <!-- Inicio -->
        <a href="inicio.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-house"></i>
            Inicio
          </button>
        </a>
        <a href="editarPerfil.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-regular fa-address-card"></i>
            Perfil
          </button>
        </a>
      </div>
    </div>
      
      <%
          } else if ("Instructor".equals(user.getId_rol_fk().getNombre_rol())) {
      %>
      
      <!-- Botones navegación -->
      <div>
        <!-- Inicio -->
        <a href="inicio.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-house"></i>
            Inicio
          </button>
        </a>
        <!-- Asignar monitor -->
        <a href="">
            <form action="/svListarMonitores" method="GET">
                <input type="hidden" value="<%= user.getId_usuario() %> " name="txtIdInstructor">
                <button
                    class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
                    <i class="fa-solid fa-plus-minus"></i>
                    Asignar monitor
                </button>
            </form>
        </a>
        <a href="#">
          <button id="showModal-2"
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-bell"></i>
            Notificaciones
          </button>
        </a>
        <a href="editarPerfil.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-regular fa-address-card"></i>
            Perfil
          </button>
        </a>
      </div>
    </div>
    
    <%
      } else if ("Monitor".equals(user.getId_rol_fk().getNombre_rol())) {
    %>
    
     <!-- Botones navegación -->
      <div>
        <!-- Inicio -->
        <a href="inicio.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-house"></i>
            Inicio
          </button>
        </a>
        <!-- Crear post -->
        <a href="views/monitor/crearPost.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-plus-minus"></i>
            Crear post
          </button>
        </a>
        <a href="#">
          <button id="showModal-2"
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-bell"></i>
            Notificaciones
          </button>
        </a>
        <a href="editarPerfil.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-regular fa-address-card"></i>
            Perfil
          </button>
        </a>
      </div>
    </div>
        
    <%
        }
    %>
    
    <!-- Barra notificaciones -->
    <nav id="modal-2" class="hidden bg-white p-7 shadow-md absolute top-0 left-full h-screen w-full">
      <div class="grid gap-y-5">
        <button id="closeModal-2" class="btn btn-sm btn-circle btn-ghost text-mdaGreen">
          <i class="fa-solid fa-chevron-left"></i>
        </button>
        <!-- HR -->
        <div class="flex flex-col w-full">
          <div class="divider m-0 h-0"></div>
        </div>
        <div>
          <p class="text-mdaBlack text-sm">
            Daniel Acetaminofén, ha cargado una evidencia
          </p>
          <button class="btn btn-sm bg-mdaGreen border-none text-white mt-2 hover:bg-mdaGreen w-full">
            Ver evidencia
          </button>
        </div>
      </div>
    </nav>
  </nav>
  <div id="modal-2__background" class="hidden bg-mdaBlack_400 w-full min-h-screen absolute"></div>
  
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
  <!-- Indicador de rol -->
  <button class="bg-white btn btn-sm border-none text-mdaBlack absolute top-0 right-0 m-2.5 hover:bg-white">
    <i class="fa-solid fa-user"></i> <%= user.getId_rol_fk().getNombre_rol() %>
  </button>

  <!-- Enlace para manejo del DOM -->
  <script src="scripts/inicio.js"></script>
  <script src="scripts/script.js"></script>
</body>

</html>