package modelo;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.objetos.Post;

public class AdminDAO extends Conexion {

    // Metodo para listar los post
    public List<Post> listarTodosLosPosts() {

        // Retornara una lista de posts
        List<Post> allPosts = new ArrayList<>();

        // Variable para el manejo de las consultas
        PreparedStatement ps = null;
        ResultSet rs = null;

        // Manejo de errores
        try {
            // Metodo para conectar con la base de datos
            this.conectar();

            // Consutla sql para obtener los datos necesarios
            String sql = "SELECT \n"
                    + "	p.id_post,\n"
                    + "    p.observacion,\n"
                    + "    p.fecha_post,\n"
                    + "    CONCAT(per.nombre_usuario, ' ', per.apellido_usuario) AS nombre_monitor,\n"
                    + "    p.titulo_post,\n"
                    + "    COUNT(a.id_archivo) AS cantidad_archivos,\n"
                    + "    CONCAT(pi.nombre_usuario, ' ', pi.apellido_usuario) AS nombre_instructor_asignado,\n"
                    + "    p.estado,\n"
                    + "    p.validacion\n"
                    + "FROM \n"
                    + "    tb_post p\n"
                    + "LEFT JOIN \n"
                    + "    tb_usuarios u ON p.id_usuario_fk = u.id_usuario\n"
                    + "LEFT JOIN \n"
                    + "    tb_perfil per ON u.id_usuario = per.id_usuario_fk\n"
                    + "LEFT JOIN \n"
                    + "    tb_archivo a ON p.id_post = a.id_post_fk\n"
                    + "LEFT JOIN \n"
                    + "    tb_usuarios ui ON u.id_instructor_asig = ui.id_usuario\n"
                    + "LEFT JOIN \n"
                    + "    tb_perfil pi ON ui.id_usuario = pi.id_usuario_fk\n"
                    + "GROUP BY \n"
                    + "    p.id_post, p.fecha_post, p.titulo_post, nombre_monitor, nombre_instructor_asignado, p.estado, p.validacion;";

            // Preparar la conexion con la consulta sql
            ps = getCon().prepareStatement(sql);

            // Ejecutar la consulta
            rs = ps.executeQuery();

            // Si se encuentran posts de ese monitor
            while (rs.next()) {

                // Se instancia un nuevo objeto post, y lo agregara en un arreglo
                Post post = new Post();
                post.setId(rs.getInt("id_post"));
                post.setTitulo(rs.getString("titulo_post"));
                post.setNombreUsuario(rs.getString("nombreCompleto"));
                post.setObservacion(rs.getString("observacion"));
                post.setValidacion(rs.getBoolean("validacion"));
                post.setEstado(rs.getBoolean("estado"));
                post.setContador(rs.getInt("cantidadArchivos"));
                post.setFechaPost(rs.getTimestamp("fecha_post"));
                post.setNombreInstructor(rs.getString("nombre_instructr_asignado"));

                // Agregar el posts al arreglo
                allPosts.add(post);
            }
        } catch (Exception e) {
            System.out.println("ERROR LOS POSTS: " + e.getMessage());
        } finally {
            // Metodo para desconectar la base de datos
            this.desconectar();
        }
        // Retorna la lista de los post de dicho monitor
        return allPosts;
    }

}