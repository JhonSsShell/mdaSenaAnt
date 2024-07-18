/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.PerfilDAO;
import modelo.objetos.Perfil;

@WebServlet(name = "svModificar", urlPatterns = {"/svModificar"})
public class svModificar extends HttpServlet {
    
    PerfilDAO pDao = new PerfilDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        request.setCharacterEncoding("UTF-8");
        
        Perfil p = (Perfil) sesion.getAttribute("dataPerfil");
        
        String idPerfil = request.getParameter("txtIdPerfil");
        String nombre = request.getParameter("txtNombre");
        String apellido = request.getParameter("txtApellido");
        String numero = request.getParameter("txtDocumento");
        String centro = request.getParameter("txtCentro");
        
        int idProfile = Integer.parseInt(idPerfil);
        
        p.setId_perfil(idProfile);
        p.setNombre_usuario(nombre);
        p.setApellido_usuario(apellido);
        p.setNum_documento(numero);
        p.setCentro_formacion(centro);
        
        boolean isUpdate = pDao.actualizarPerfil(p);
        if (isUpdate) {
            System.out.println("Se modifico el usuario");
            sesion.getAttribute("user");
            response.sendRedirect("editarPerfil.jsp");
        } else {
            System.out.println("No se envio al metodo de modificar");
        }
        
    }
}
