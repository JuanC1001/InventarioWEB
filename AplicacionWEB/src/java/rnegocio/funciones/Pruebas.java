/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.util.ArrayList;
import rnegocio.funciones.FUsuario;
import rnegocio.entidades.Usuario;

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
        ArrayList<Usuario> lista = new ArrayList<Usuario>();

        int clav = 1;
        Usuario usuario=new Usuario("usu", "usu", "usu", "usu", "usu");
        
//        Usuario user = new Usuario();
        Boolean resp = FUsuario.usuario_insertar(usuario);
//       System.err.println(">>" + user.getCodigo());
//        System.err.println(">>" + user.getNombre());

    }

}
