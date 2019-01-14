package rnegocio.entidades;

import AccesoADatos.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Jc
 */
public class Producto {

    private int codigo;
    private String nombre;
    private Double stock;
    private Double precio_venta;
    private Double precio_compra;
    private Categoria categoria;
    private Categoria hk;

    public Producto() {
    }

    public Producto(int codigo, String nombre, Double stock, Double precio_venta, Double precio_compra, Categoria categoria) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.stock = stock;
        this.precio_venta = precio_venta;
        this.precio_compra = precio_compra;
        this.categoria = categoria;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getStock() {
        return stock;
    }

    public void setStock(Double stock) {
        this.stock = stock;
    }

    public Double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(Double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public Double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(Double precio_compra) {
        this.precio_compra = precio_compra;
    }

}
