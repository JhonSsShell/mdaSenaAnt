<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.objetos.Perfil"%>
<%@page import="modelo.objetos.Usuario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    HttpSession sesion = request.getSession(false);
    HttpSession sesionPerfil = request.getSession(false);
    if ((sesion == null || sesion.getAttribute("dataUser") == null)) {
            System.out.println("Error en la vista de editar perfil");
            response.sendRedirect("login.jsp");
            return;
    }
    Perfil perfil = (Perfil) sesionPerfil.getAttribute("dataPerfil");
    Usuario user = (Usuario) sesion.getAttribute("dataUser");
%>

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
  <link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.2/dist/full.min.css" rel="stylesheet" type="text/css" />
  <!-- Enlace para iconos de Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <title>MDA Sena - Asignar monitor</title>
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
          <img src="../../images/LogoNegro.svg" alt="" />
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
      <!-- Botones navegación -->
      <div>
        <!-- Inicio -->
        <a href="../../inicio.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-house"></i>
            Inicio
          </button>
        </a>
        <!-- Asignar monitor -->
        <a href="asignarMonitor.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-plus-minus"></i>
            Asignar monitor
          </button>
        </a>
        <a href="#">
          <button id="showModal-2"
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-solid fa-bell"></i>
            Notificaciones
          </button>
        </a>
        <a href="../../editarPerfil.jsp">
          <button
            class="btn bg-transparent shadow-none w-full border-none text-mdaBlack hover:bg-mdaGreen_400 flex justify-start">
            <i class="fa-regular fa-address-card"></i>
            Perfil
          </button>
        </a>
      </div>
    </div>
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

  <!-- Modal agregar monitor -->
  <section id="modal-1"
    class="hidden fixed m-auto flex w-full min-h-screen justify-center p-5 gap-5 flex-wrap content-center bg-mdaBlack_400 z-10">
    <article class="bg-white w-full max-w-2xl shadow-md rounded-lg p-5 flex flex-col justify-between gap-5">
      <div class="flex w-full justify-between">
        <h3 class="text-mdaBlack text-xl">Agregar monitor</h3>
        <button id="closeModal" class="btn btn-sm btn-circle btn-ghost text-mdaBlack">
          ✕
        </button>
      </div>
        <form action="" method="" id="buscarForm">
            <label class="input input-bordered flex items-center gap-2 bg-white">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="w-4 h-4 opacity-70">
                  <path fill-rule="evenodd"
                    d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z"
                    clip-rule="evenodd" />
                </svg>
                <input type="text" class="grow text-mdaBlack" placeholder="Search" id="numAprendiz" name="txtNumero"/>
            </label>
            <button class="btn bg-mdaGreen border-none text-white hover:bg-mdaGreen w-full mt-4" type="submit">Agregar</button>
        </form>
        <div id="infoAprendiz">
            <p id="detallesAprendiz"></p>
<!--            <form id="cambiarRol" action="">
                <input type="hidden" id="userId" name="userId">
                <button type="submit">
                    Cambiar rol
                </button>
            </form>-->
        </div>
    </article>
  </section>

  <!-- Contenedor para los artículos -->
  <section class="m-auto flex w-full max-w-screen-2xl min-h-screen justify-center p-5 gap-5 flex-wrap content-center">
    <!-- Contenedor -->
    <article class="bg-white w-full max-w-2xl shadow-md rounded-lg p-5 flex flex-col justify-between gap-5">
      <!-- Agregar monitor -->
      <div class="flex w-full justify-between">
        <h3 class="text-mdaBlack text-xl">Administrar monitores</h3>
        <button id="showModal" class="btn bg-mdaGreen border-none text-white hover:bg-mdaGreen">
          Agregar monitor
        </button>
      </div>
      <!-- Buscar monitor -->
      <form action="" method="">
        <label class="input input-bordered flex items-center gap-2 bg-white">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="w-4 h-4 opacity-70">
            <path fill-rule="evenodd"
              d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z"
              clip-rule="evenodd" />
          </svg>
          <input type="text" class="grow text-mdaBlack" placeholder="Search"/>
        </label>
      </form>
      <!-- HR -->
      <div class="flex flex-col w-full">
        <div class="divider m-0 h-0"></div>
      </div>
      <!-- Quitar monitor -->
      <div class="w-full bg-mdaWhite rounded-lg p-1">
        <!-- Monitor #1 -->
        <div class="flex justify-between items-center">
          <div class="text-mdaBlack">
            <i class="fa-solid fa-user-minus mx-2.5"></i>
            <p class="inline-block">Daniel Acetaminofén</p>
          </div>
          <form action="">
            <button class="btn bg-mdaRed border-none text-white hover:bg-mdaRed">
              Quitar monitor
            </button>
          </form>
        </div>
      </div>
    </article>
  </section>
  <!-- Indicador de rol -->

  <!-- Enlace para manejo del DOM -->
  <script src="../../scripts/instructor.js"></script>
  <script src="../../scripts/script.js"></script>
  <script>
      document.getElementById("buscarForm").addEventListener("submit", function(event) {
        event.preventDefault(); 
        let numeroDocumento = document.getElementById("numAprendiz").value;
        let xhr = new XMLHttpRequest();
        xhr.open('POST', "/svBuscarAprendiz", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencode");
        alert(numeroDocumento);
        xhr.onload = function () {
            console.log(xhr.status);
            if (xhr.status === 200) {
                let response = JSON.parse(xhr.response);
                console.log(response);
                if (response) {
                   document.getElementById("infoAprendiz");
                   document.getElementById("detalles aprendiz").innerHTML = response.details;
                }
                else {
                   console.log("No se encontro el usuario");
                }
            };
        };
        xhr.send("txtNumero="+numeroDocumento);

      });
  </script>
</body>

</html>
