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
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import rnegocio.entidades.Entrada;
import rnegocio.entidades.Salida;

/**
 *
 * @author Usuario
 */
public class FEntrada {

    public static ArrayList<Entrada> entrada_buscartodos() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Entrada> lista = new ArrayList<Entrada>();
        Entrada obj = new Entrada();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.entrada_listar();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Entrada();

                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setFecha(rs.getDate("pfecha"));
                obj.setProducto(FProducto.producto_buscarporid(rs.getInt("pcodigo_producto")));
                obj.setCantidad(rs.getInt("pcantidad"));
                obj.setProveedor(FProveedor.proveedor_buscarporid(rs.getInt("pcodigo_proveedor")));
                obj.setDetalle(rs.getString("pdetalle"));

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

    public static Entrada entrada_buscarporid(int codigo) throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Entrada> lista = new ArrayList<Entrada>();
        Entrada obj = new Entrada();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.entrada_buscar(?);";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            preStm.setInt(1, codigo);
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Entrada();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setFecha(rs.getDate("pfecha"));
                obj.setProducto(FProducto.producto_buscarporid(rs.getInt("pcodigo_producto")));
                obj.setCantidad(rs.getInt("pcantidad"));
                obj.setProveedor(FProveedor.proveedor_buscarporid(rs.getInt("pcodigo_proveedor")));
                obj.setDetalle(rs.getString("pdetalle"));
                lista.add(obj);
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

    public static boolean entrada_insertar(Entrada entrada) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            java.sql.Date sqlfecha = convertUtilToSql(entrada.getFecha());
            cmd.setSetenciaSql("SELECT *from facturacion.entrada_insertar(?, ?, ?, ?, ?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, sqlfecha));
            parametros.add(new Parametro(2, entrada.getProducto().getCodigo()));
            parametros.add(new Parametro(3, entrada.getCantidad()));
            parametros.add(new Parametro(4, entrada.getProveedor().getCodigo()));
            parametros.add(new Parametro(5, entrada.getDetalle()));

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

    public static boolean entrada_editar(Entrada entrada) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            java.sql.Date sqlfecha = convertUtilToSql(entrada.getFecha());
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from facturacion.entrada_editar(?,?,?,?,?,?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros

            parametros.add(new Parametro(1, entrada.getCodigo()));
            parametros.add(new Parametro(2, sqlfecha));
            parametros.add(new Parametro(3, entrada.getProducto().getCodigo()));
            parametros.add(new Parametro(4, entrada.getCantidad()));
            parametros.add(new Parametro(5, entrada.getProveedor().getCodigo()));
            parametros.add(new Parametro(6, entrada.getDetalle()));

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

    public static boolean entrada_eliminar(int pscactbevidenid) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from facturacion.entrada_eliminar(?);");
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

    private static java.sql.Date convertUtilToSql(java.util.Date uDate) {
        java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
    }
}
