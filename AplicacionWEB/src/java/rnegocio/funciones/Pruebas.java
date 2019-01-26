/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.util.ArrayList;
import rnegocio.funciones.FPagina;
import rnegocio.entidades.Pagina;

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
        ArrayList<Pagina> lista = new ArrayList<Pagina>();
        lista = FPagina.pagina_buscartodos();
        if (lista.size() != 0) {
            for (Pagina rec : lista) {
                System.out.println(rec.getCodigo());
                System.out.println(rec.getUrl());

            }
        } else {
            System.out.println("No hay registro");
        }
    }

}
