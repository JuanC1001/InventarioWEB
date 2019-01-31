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

        String usu = "0604459495";
        String clav = "12345";
        Usuario user = new Usuario();
        user=FUsuario.usuario_login(usu, clav);
        System.err.println(">>" + user.getCodigo());
        System.err.println(">>" + user.getNombre());

    }

}
