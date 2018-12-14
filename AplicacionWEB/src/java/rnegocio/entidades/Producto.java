
package rnegocio.entidades;
import AccesoADatos.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Jc
 */
public class Producto {
  private int productoid;
  private String nombreproducto;

    public Producto() {
    }

    public Producto(int productoid, String nombreproducto) {
        this.productoid = productoid;
        this.nombreproducto = nombreproducto;
    }

    /**
     * @return the productoid
     */
    public int getProductoid() {
        return productoid;
    }

    /**
     * @param productoid the productoid to set
     */
    public void setProductoid(int productoid) {
        this.productoid = productoid;
    }

    /**
     * @return the nombreproducto
     */
    public String getNombreproducto() {
        return nombreproducto;
    }

    /**
     * @param nombreproducto the nombreproducto to set
     */
    public void setNombreproducto(String nombreproducto) {
        this.nombreproducto = nombreproducto;
    }
    
}


