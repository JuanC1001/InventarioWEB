/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.funciones;

import AccesoADatos.Conexion;
import AccesoADatos.Global;
import com.google.gson.Gson;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import rnegocio.entidades.*;

/**
 *
 * @author MI PC
 */
public class FReporte {

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

    public static ArrayList<Reporte> reporte_general() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Reporte> lista = new ArrayList<Reporte>();
        Reporte obj = new Reporte();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.producto_listar_reporte_general();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset

            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Reporte();

                obj.setCodigo_producto(rs.getInt("pcodigo"));
                obj.setNombre_producto(rs.getString("pnombre_producto"));
                obj.setCantidad_entrada(rs.getDouble("pcantidadentrada"));
                obj.setCantidad_salida(rs.getDouble("pcantidadsalida"));
                obj.setNombre_categoria(rs.getString("pnombre_categoria"));
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
    public static ArrayList<Reporte> reporte_entrada() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Reporte> lista = new ArrayList<Reporte>();
        Reporte obj = new Reporte();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.reporte_entrada();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset

            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Reporte();

                obj.setFecha_entrada(rs.getDate("pfecha_entrada"));
                obj.setNombre_producto(rs.getString("pnombre_producto"));
                obj.setCantidad_entrada(rs.getDouble("pcantidad_entrada"));
                obj.setNombre_proveedor(rs.getString("pproveedor"));
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
    public static ArrayList<Reporte> reporte_salida() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Reporte> lista = new ArrayList<Reporte>();
        Reporte obj = new Reporte();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;

        try {
            //declaro mi sql
            String sql = "SELECT *from facturacion.reporte_salida();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset

            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Reporte();
                obj.setFecha_salida(rs.getDate("pfecha_salida"));
                obj.setNombre_producto(rs.getString("pnombre_producto"));
                obj.setCantidad_salida(rs.getDouble("pcantidad_salida"));
                obj.setNombre_destino(rs.getString("pdestino"));
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
    
    public static ArrayList<Producto> reporte_productos() throws Exception {
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

}
