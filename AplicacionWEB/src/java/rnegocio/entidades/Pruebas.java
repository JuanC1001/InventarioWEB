/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;

import java.util.ArrayList;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Cristian
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        
//        BUSCAR TODOS
//        ArrayList<Producto> lista= new ArrayList<Producto>();
//         lista=Producto.producto_buscartodos();
//         if (lista.size()!=0)
//          {
//               for(Producto rec: lista)
//                {
//                         System.out.println(rec.getNombreproducto());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }
//             
    
//BUSCAR POR ID
//  ArrayList<Producto> lista= new ArrayList<Producto>();
//         lista=Producto.producto_buscarporid(2);
//         if (lista.size()!=0)
//          {
//               for(Producto rec: lista)
//                {
//                         System.out.println(rec.getNombreproducto());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }


//  INSERTAR
//Producto obj=new Producto();
//obj.setNombreproducto("Cable USB");
//
//    Producto.producto_insertar(obj);
    

//    EDITAR
//Producto obj=new Producto();
//obj.setNombreproducto("Cable UTP");
//obj.setProductoid(6);
//    Producto.producto_editar(obj);
    
//  ELIMINAR
    Producto.producto_eliminar(6);


    }
}
   


