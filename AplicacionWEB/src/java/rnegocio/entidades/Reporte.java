/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

import java.util.Date;

/**
 *
 * @author MI PC
 */
public class Reporte {
    private int codigo_producto;
private String nombre_producto;
private Double cantidad_stock;
private String nombre_categoria;
private Double cantidad_entrada;
private Double cantidad_salida;
private Date fecha_entrada;
private Date fecha_salida;
private String nombre_proveedor;
private String nombre_destino;

    public Reporte() {
    }

    public Reporte(int codigo_producto, String nombre_producto, Double cantidad_stock, String nombre_categoria, Double cantidad_entrada, Double cantidad_salida, Date fecha_entrada, Date fecha_salida, String nombre_proveedor, String nombre_destino) {
        this.codigo_producto = codigo_producto;
        this.nombre_producto = nombre_producto;
        this.cantidad_stock = cantidad_stock;
        this.nombre_categoria = nombre_categoria;
        this.cantidad_entrada = cantidad_entrada;
        this.cantidad_salida = cantidad_salida;
        this.fecha_entrada = fecha_entrada;
        this.fecha_salida = fecha_salida;
        this.nombre_proveedor = nombre_proveedor;
        this.nombre_destino = nombre_destino;
    }

   

    public String getNombre_destino() {
        return nombre_destino;
    }

    public void setNombre_destino(String nombre_destino) {
        this.nombre_destino = nombre_destino;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public Double getCantidad_stock() {
        return cantidad_stock;
    }

    public void setCantidad_stock(Double cantidad_stock) {
        this.cantidad_stock = cantidad_stock;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public void setNombre_categoria(String nombre_categoria) {
        this.nombre_categoria = nombre_categoria;
    }

    public Double getCantidad_entrada() {
        return cantidad_entrada;
    }

    public void setCantidad_entrada(Double cantidad_entrada) {
        this.cantidad_entrada = cantidad_entrada;
    }

    public Double getCantidad_salida() {
        return cantidad_salida;
    }

    public void setCantidad_salida(Double cantidad_salida) {
        this.cantidad_salida = cantidad_salida;
    }

    public Date getFecha_entrada() {
        return fecha_entrada;
    }

    public void setFecha_entrada(Date fecha_entrada) {
        this.fecha_entrada = fecha_entrada;
    }

    public Date getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(Date fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public String getNombre_proveedor() {
        return nombre_proveedor;
    }

    public void setNombre_proveedor(String nombre_proveedor) {
        this.nombre_proveedor = nombre_proveedor;
    }

    public int getCodigo_producto() {
        return codigo_producto;
    }

    public void setCodigo_producto(int codigo_producto) {
        this.codigo_producto = codigo_producto;
    }

}
