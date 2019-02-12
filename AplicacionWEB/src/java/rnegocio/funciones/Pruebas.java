/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import java.sql.Date;
import java.util.ArrayList;
import rnegocio.entidades.RolPagina;
import rnegocio.funciones.FRolPagina;
import rnegocio.entidades.RolPagina;
import rnegocio.entidades.Rol;
import rnegocio.entidades.Pagina;
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
        Rol rol=new Rol();
        Pagina pagina=new Pagina();
        rol=FRol.rol_buscarporid(1);
        pagina=FPagina.pagina_buscarporid(3);
        RolPagina rolpagina=new RolPagina(1,pagina,rol);
//        
//        Usuario user = new Usuario();
        Boolean resp = FRolPagina.PaginaRol_insertar(rolpagina);
//        user=FUsuario.usuario_buscarporid(13);
         System.err.println(">>" + resp);
//        Boolean resp = FRolPagina.RolPagina_insertar(rolpagina);
//        lista = FRol.rol_buscartodos();
//        for(Rol r: lista){
//          System.out.println(">>"+ r.getNombre());
//        }
//        System.err.println(">>" + user.getNombre());

//        Rol rol=new Rol();
//        Pagina pagina=new Pagina();
//        rol=FRol.rol_buscarporid(428);
//        pagina=FPagina.pagina_buscarporid(1);
//        Date fecha=Date.valueOf("2019-01-01");
//        RolPagina rolPagina=new RolPagina(1,fecha, rol, 600, pagina, "sn");
//        
//        Rol user = new Rol();
//        Boolean resp = FRolPagina.rolPagina_insertar(rolPagina);
//        user=FRol.rol_buscarporid(1);
//       System.err.println(">>" + usuari);
//        System.err.println(">>" + user.getNombre());
    }

}
