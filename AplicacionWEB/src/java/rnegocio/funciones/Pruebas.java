/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.sql.Date;
import java.util.ArrayList;
import rnegocio.funciones.FEntrada;
import rnegocio.entidades.Entrada;
import rnegocio.entidades.Producto;
import rnegocio.entidades.Proveedor;

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
        ArrayList<Entrada> lista = new ArrayList<Entrada>();
        Producto producto=new Producto();
        Proveedor proveedor=new Proveedor();
        producto=FProducto.producto_buscarporid(428);
        proveedor=FProveedor.proveedor_buscarporid(1);

        int clav = 1;
        Entrada entrada=new Entrada(1,null, producto, 500, proveedor, "hola");
        
//        Entrada user = new Entrada();
        Boolean resp = FEntrada.entrada_insertar(entrada);
//       System.err.println(">>" + user.getCodigo());
//        System.err.println(">>" + user.getNombre());

    }

}
