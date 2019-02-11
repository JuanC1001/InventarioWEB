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
import com.google.gson.Gson;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import rnegocio.entidades.*;
import java.util.ArrayList;

/**
 *
 * @author Usuario
 */
public class FProducto {

    public static ArrayList<Producto> producto_buscartodos() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto obj = new Producto();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.producto_listar();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset

            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Producto();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setNombre(rs.getString("pnombre"));
                obj.setStock(rs.getDouble("pstock"));
                obj.setPrecio_venta(rs.getDouble("pprecio_venta"));
                obj.setPrecio_compra(rs.getDouble("pprecio_compra"));
                obj.setCategoria(FCategoria.categoria_buscarporid(rs.getInt("pcodigo_categoria")));
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

    public static Producto producto_buscarporid(int piproductoid) throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        Producto obj = new Producto();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;
        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.producto_buscar(?);";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            preStm.setInt(1, piproductoid);
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Producto();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setNombre(rs.getString("pnombre"));
                obj.setStock(rs.getDouble("pstock"));
                obj.setPrecio_venta(rs.getDouble("pprecio_venta"));
                obj.setPrecio_compra(rs.getDouble("pprecio_compra"));
                obj.setCategoria(FCategoria.categoria_buscarporid(rs.getInt("pcodigo_categoria")));
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

    public static boolean producto_insertar(Producto producto) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from facturacion.producto_insertar(?, ?, ?, ?, ?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, producto.getNombre()));
            parametros.add(new Parametro(2, producto.getStock()));
            parametros.add(new Parametro(3, producto.getPrecio_venta()));
            parametros.add(new Parametro(4, producto.getPrecio_compra()));
            parametros.add(new Parametro(5, producto.getCategoria().getCodigo()));
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

    public static boolean producto_editar(Producto producto) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from facturacion.producto_editar(?,?,?,?,?,?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros

            parametros.add(new Parametro(1, producto.getCodigo()));
            parametros.add(new Parametro(2, producto.getNombre()));
            parametros.add(new Parametro(3, producto.getStock()));
            parametros.add(new Parametro(4, producto.getPrecio_venta()));
            parametros.add(new Parametro(5, producto.getPrecio_compra()));
            parametros.add(new Parametro(6, producto.getCategoria().getCodigo()));

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

    public static boolean producto_eliminar(int codigo_producto) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("SELECT *from facturacion.producto_eliminar(?);");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, codigo_producto));
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

    public static ArrayList<Producto> producto_buscarbycategoria(String categorianom) throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto obj = new Producto();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.producto_buscarbycategoria(?);";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            preStm.setString(1, categorianom);
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Producto();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setNombre(rs.getString("pnombre"));
                obj.setStock(rs.getDouble("pstock"));
                obj.setCategoria(FCategoria.categoria_buscarporid(rs.getInt("pcodigo_categoria")));
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

    public static String producto_buscarbycategoriajson(String pinombre_categoria) throws Exception {
        ArrayList<Producto> lista = new ArrayList<Producto>();
        lista = producto_buscarbycategoria(pinombre_categoria);

        Gson gson = new Gson();
        StringBuilder sb = new StringBuilder();
        for (Producto d : lista) {
            sb.append(gson.toJson(d));
        }
        return sb.toString();
    }
        public static String producto_buscartodosjson(String pinombre_categoria) throws Exception {
        ArrayList<Producto> lista = new ArrayList<Producto>();
        lista = producto_buscarbycategoria(pinombre_categoria);

        Gson gson = new Gson();
        StringBuilder sb = new StringBuilder();
        for (Producto d : lista) {
            sb.append(gson.toJson(d));
        }
        return sb.toString();
    }

}
