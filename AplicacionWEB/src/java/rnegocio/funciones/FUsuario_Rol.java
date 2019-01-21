/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import rnegocio.entidades.Rol;
import rnegocio.entidades.Usuario;

/**
 *
 * @author Usuario
 */
public class FUsuario_Rol {
    private int codigo;
    private Rol rol;
    private Usuario usuario;
    private int estado;

    public FUsuario_Rol() {
    }

    public FUsuario_Rol(int codigo, Rol rol, Usuario usuario, int estado) {
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
