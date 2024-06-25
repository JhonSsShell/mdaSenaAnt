package modelo.objetos;

public class Usuario {
    private int id_usuario;
    private String correoInst;
    private String password;
    private Rol id_rol_fk;

    public Usuario() {
    }

    public Usuario(int id_usuario, String correoInst, String password, Rol id_rol_fk) {
        this.id_usuario = id_usuario;
        this.correoInst = correoInst;
        this.password = password;
        this.id_rol_fk = id_rol_fk;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getCorreoInst() {
        return correoInst;
    }

    public void setCorreoInst(String correoInst) {
        this.correoInst = correoInst;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Rol getId_rol_fk() {
        return id_rol_fk;
    }

    public void setId_rol_fk(Rol id_rol_fk) {
        this.id_rol_fk = id_rol_fk;
    }
}