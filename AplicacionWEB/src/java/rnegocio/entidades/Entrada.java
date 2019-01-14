/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.util.Date;

/**
 *
 * @author MI PC
 */
public class Entrada {

    private int codigo;
    private Date fecha;
    private Producto producto;
    private int cantidad;

    public Entrada() {
    }

    public Entrada(int codigo, Date fecha, Producto producto, int cantidad) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.producto = producto;
        this.cantidad = cantidad;
    }





    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

}
