/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

/**
 *
 * @author Usuario
 */
public class UsuarioRol {

    private int codigo;
    private Rol rol;
    private Usuario usuario;
    private int estado;

    public UsuarioRol() {
    }

    public UsuarioRol(int codigo, Rol rol, Usuario usuario, int estado) {
        this.codigo = codigo;
        this.rol = rol;
        this.usuario = usuario;
        this.estado = estado;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

}
