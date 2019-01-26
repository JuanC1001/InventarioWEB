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
public class RolPagina {
    private int codigo;
    private Pagina pagina;
    private Rol rol;

    public RolPagina() {
    }

    public RolPagina(int codigo, Pagina pagina, Rol rol) {
        this.codigo = codigo;
        this.pagina = pagina;
        this.rol = rol;
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Pagina getPagina() {
        return pagina;
    }

    public void setPagina(Pagina pagina) {
        this.pagina = pagina;
    }
    
}
