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
import rnegocio.entidades.Usuario;

/**
 *
 * @author MI PC
 */
public class FUsuario {

    public static ArrayList<Usuario> usuario_buscartodos() throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        ArrayList<Usuario> lista = new ArrayList<Usuario>();
        Usuario obj = new Usuario();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;
        try {
            //declaro mi sql
            String sql = "SELECT * FROM usuarios.usuario_listar();";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Usuario();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setApellido(rs.getString("papellidos"));
                obj.setNombre(rs.getString("pnombres"));
                obj.setEmail(rs.getString("pemail"));
                obj.setCedula(rs.getString("pcedula"));
                obj.setClave(rs.getString("pclave"));
                obj.setPrimer_acceso(rs.getTimestamp("pprimer_acceso"));
                obj.setUltimo_acceso(rs.getTimestamp("pultimo_acceso"));
                obj.setUltima_ip(rs.getString("pultimo_ip"));
                obj.setFecha_modificacion(rs.getDate("pfecha_modificacion"));

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

    public static Usuario usuario_buscarporid(int piusuarioid) throws Exception {
        //CREO LISTA QUE RECIBIRA LOS DATOS DEL RESULSET
        Usuario obj = new Usuario();
        ResultSet rs = null;
        //LLAMO LA CONEXION
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        //DECLARO UN PREPAREDSTATEMENT QUE EJECUTARA LA SQL
        PreparedStatement preStm = null;
        try {
            //declaro mi sql
            String sql = "SELECT *from usuarios.usuario_rol_buscar(?);";
            //creo mi preparedstatement
            preStm = con.creaPreparedSmt(sql);
            //ejecuto el prepardestatement y le asigno a mi resulset
            preStm.setInt(1, piusuarioid);
            rs = con.ejecutaPrepared(preStm);
            obj = null;
            while (rs.next()) {
                obj = new Usuario();
                obj.setCodigo(rs.getInt("pcodigo"));
                obj.setApellido(rs.getString("papellidos"));
                obj.setNombre(rs.getString("pnombres"));
                obj.setEmail(rs.getString("pemail"));
                obj.setCedula(rs.getString("pcedula"));
                obj.setClave(rs.getString("pclave"));
                obj.setPrimer_acceso(rs.getTimestamp("pprimer_acceso"));
                obj.setUltimo_acceso(rs.getTimestamp("pultimo_acceso"));
                obj.setUltima_ip(rs.getString("pultimo_ip"));
                obj.setFecha_modificacion(rs.getDate("pfecha_modificacion"));


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

    public static boolean usuario_insertar(Usuario usuario) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("select * from usuarios.usuario_insertar(?,?,?,?,?)");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, usuario.getNombre()));
            parametros.add(new Parametro(2, usuario.getApellido()));
            parametros.add(new Parametro(3, usuario.getCedula()));
            parametros.add(new Parametro(4, usuario.getEmail()));
            parametros.add(new Parametro(5, usuario.getClave()));


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

    public static boolean usuario_editar(Usuario usuario) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("select * from usuarios.usuario_editar(?,?)");
            //CREAMOS EL ARRALIST DE PARAMETROS PARA ASIGANR A MI PRIMER COMANDO
            ArrayList<Parametro> parametros = new ArrayList<Parametro>();
            //llenamos el arraylist con todos los parametros
            parametros.add(new Parametro(1, usuario.getCodigo()));
            parametros.add(new Parametro(2, usuario.getApellido()));
            parametros.add(new Parametro(3, usuario.getNombre()));
            parametros.add(new Parametro(4, usuario.getEmail()));
            parametros.add(new Parametro(5, usuario.getCedula()));
            parametros.add(new Parametro(6, usuario.getClave()));
            parametros.add(new Parametro(7, usuario.getPrimer_acceso()));
            parametros.add(new Parametro(8, usuario.getUltimo_acceso()));
            parametros.add(new Parametro(9, usuario.getUltima_ip()));
            parametros.add(new Parametro(10, usuario.getFecha_modificacion()));

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

    public static boolean usuario_eliminar(int pscactbevidenid) throws Exception {
        boolean respuesta = false;
        Conexion con = new Conexion(Global.driver, Global.url, Global.user, Global.pass);
        try {
            //CREAMOS EL ARRAYLIST DE LOS COMANDOS O SENTENCIAS SQL
            ArrayList<Comando> comandos = new ArrayList<Comando>();
            //CREAMOS EL PRIMER COMANDO QUE SERA AÃ‘ADIDO AL ARRAYLIST D COMANDOS
            Comando cmd = new Comando();
            //SETEAMOS LA FUNCION AL COMAND0
            cmd.setSetenciaSql("select * from usuarios.usuario_eliminar(?)");
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
