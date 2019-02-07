/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.sql.Date;
import java.util.ArrayList;
import rnegocio.funciones.FUsuarioRol;
import rnegocio.entidades.UsuarioRol;
import rnegocio.entidades.Usuario;
import rnegocio.entidades.Rol;

/**
 *
 * @author MI PC
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        ArrayList<UsuarioRol> lista = new ArrayList<UsuarioRol>();
        Usuario usuario=new Usuario();
        Rol rol=new Rol();
        usuario=FUsuario.usuario_buscarporid(1);
        rol=FRol.rol_buscarporid(1);
        UsuarioRol usuariorol=new UsuarioRol(1, rol, usuario, 1);
        
        Usuario user = new Usuario();
        //Boolean resp = FUsuarioRol.UsuarioRol_insertar(usuariorol);
        user=FUsuario.usuario_buscarporid(1);
       System.err.println(">>" + user.getNombre());
//        System.err.println(">>" + user.getNombre());

    }

}
