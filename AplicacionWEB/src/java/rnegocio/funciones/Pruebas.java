/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.util.ArrayList;
import rnegocio.funciones.FProducto;
import rnegocio.entidades.Producto;

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
        ArrayList<Producto> lista = new ArrayList<Producto>();
        lista = FProducto.producto_buscartodos();
        if (lista.size() != 0) {
            for (Producto rec : lista) {
                System.out.println(rec.getCodigo());
                System.out.println(rec.getNombre());
                System.out.println(rec.getStock());
                System.out.println(rec.getPrecio_venta());
                System.out.println(rec.getPrecio_compra());
                System.out.println(rec.getCategoria().getNombre());
            }
        } else {
            System.out.println("No hay registro");
        }
    }

}
