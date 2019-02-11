/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.sql.Date;
import java.util.ArrayList;
import rnegocio.entidades.Entrada;
import rnegocio.funciones.FEntrada;
import rnegocio.entidades.Entrada;
import rnegocio.entidades.Producto;
import rnegocio.entidades.Proveedor;
import rnegocio.entidades.Rol;
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
        ArrayList<Rol> lista = new ArrayList<Rol>();
//        Producto producto=new Producto();
//        Proveedor proveedor=new Proveedor();
//        producto=FProducto.producto_buscarporid(1);
//        proveedor=FProveedor.proveedor_buscarporid(1);
//        Entrada productoproveedor=new Entrada(1, proveedor, producto, 1);
////        
//        Usuario user = new Usuario();
//        //Boolean resp = FEntrada.Entrada_insertar(productoproveedor);
//        user=FUsuario.usuario_buscarporid(13);
//         System.err.println(">>" + user.getCodigo());
        //Boolean resp = FEntrada.Entrada_insertar(productoproveedor);
        lista = FRol.rol_buscartodos();
        for(Rol r: lista){
          System.out.println(">>"+ r.getNombre());
        }
//        System.err.println(">>" + user.getNombre());

//        Producto producto=new Producto();
//        Proveedor proveedor=new Proveedor();
//        producto=FProducto.producto_buscarporid(428);
//        proveedor=FProveedor.proveedor_buscarporid(1);
//        Date fecha=Date.valueOf("2019-01-01");
//        Entrada entrada=new Entrada(1,fecha, producto, 600, proveedor, "sn");
//        
//        Producto user = new Producto();
//        Boolean resp = FEntrada.entrada_insertar(entrada);
//        user=FProducto.producto_buscarporid(1);
//       System.err.println(">>" + usuari);
//        System.err.println(">>" + user.getNombre());
    }

}
