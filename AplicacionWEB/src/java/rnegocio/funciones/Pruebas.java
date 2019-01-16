/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.util.ArrayList;
import rnegocio.funciones.FDestino;
import rnegocio.entidades.Destino;

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
        ArrayList<Destino> lista = new ArrayList<Destino>();
        lista = FDestino.destino_listar();
        if (lista.size() != 0) {
            for (Destino rec : lista) {
                System.out.println(rec.getCodigo());
                System.out.println(rec.getDescripcion());

            }
        } else {
            System.out.println("No hay registro");
        }
    }

}
