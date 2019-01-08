/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

import java.util.ArrayList;

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
        ArrayList<Producto> lista= new ArrayList<Producto>();
         lista=Producto.producto_buscartodos();
         if (lista.size()!=0)
          {
               for(Producto rec: lista)
                {

                         System.out.println(rec.getNombreproducto());
                }
             }
            else
                {
                System.out.println("No hay registro");
                }
    }
    
}
