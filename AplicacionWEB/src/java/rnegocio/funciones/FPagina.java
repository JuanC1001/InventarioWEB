/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import AccesoADatos.Comando;
import AccesoADatos.Conexion;
import AccesoADatos.Global;
import AccesoADatos.Parametro;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import rnegocio.entidades.Pagina;

/**
 *
 * @author MI PC
 */
public class FPagina {
    public static ArrayList<Pagina> pagina_buscartodos() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Pagina> lista = new ArrayList<Pagina>();
        Pagina obj = new Pagina();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;
        try {
            //declaro mi sql
            String sql = "SELECT *from usuarios.pagina_listar();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Pagina();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setUrl(rs.getString("purl"));
                obj.setDescripcion(rs.getString("pdescripcion"));                
                lista.add(obj);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            rs.close();
            preStm.close();
            con.desconectar();
        }
        return lista;

    }

    public static Pagina pagina_buscarporid(int pipaginaid) throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        Pagina obj = new Pagina();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from usuarios.pagina_buscar(?);" ;
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            preStm.setInt(1, pipaginaid);
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Pagina();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setUrl(rs.getString("purl"));
                obj.setDescripcion(rs.getString("pdescripcion"));
                

            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            rs.close();
            preStm.close();
            con.desconectar();
        }
        return obj;

    }

    public static boolean pagina_insertar(Pagina pagina) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("select *from usuarios.pagina_insertar(?,?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, pagina.getUrl()));
            parametros.add(new Parametro(2, pagina.getDescripcion()));

            //llenar el comando con los parametros
            cmd.setLstParametros(parametros);
            comandos.add(cmd);
            //llamamos al funcion que ejecuta la transaccion en la base de datos
            respuesta = con.ejecutaPreparedTransaccion(comandos);

        } catch (SQLException e) {
            throw new Exception(e.getMessage());
        } finally {
            con.desconectar();
        }
        return respuesta;

    }

    public static boolean pagina_editar(Pagina pagina) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("select * from usuarios.pagina_editar(?,?,?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros

            parametros.add(new Parametro(1, pagina.getCodigo()));
            parametros.add(new Parametro(2, pagina.getUrl()));
            parametros.add(new Parametro(3, pagina.getDescripcion()));

            //llenar el comando con los parametros
            cmd.setLstParametros(parametros);
            comandos.add(cmd);
            //llamamos al funcion que ejecuta la transaccion en la base de datos
            respuesta = con.ejecutaPreparedTransaccion(comandos);

        } catch (SQLException e) {
            throw new Exception(e.getMessage());
        } finally {
            con.desconectar();
        }
        return respuesta;

    }

    public static boolean pagina_eliminar(int pscactbevidenid) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from usuarios.pagina_eliminar(?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, pscactbevidenid));
            //llenar el comando con los parametros
            cmd.setLstParametros(parametros);
            comandos.add(cmd);
            //llamamos al funcion que ejecuta la transaccion en la base de datos
            respuesta = con.ejecutaPreparedTransaccion(comandos);

        } catch (SQLException e) {
            throw new Exception(e.getMessage());
        } finally {
            con.desconectar();
        }
        return respuesta;

    }
  
}
