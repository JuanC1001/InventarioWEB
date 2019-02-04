/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author Usuario
 */
public class Usuario {

    private int codigo;
    private String apellido;
    private String nombre;
    private String email;
    private String cedula;
    private String clave;
    private Timestamp primer_acceso;
    private Timestamp ultimo_acceso;
    private String ultima_ip;
    private Date fecha_modificacion;

    public Usuario() {
    }

    public Usuario(int codigo, String apellidos, String nombres, String email, String cedula, String clave, Timestamp primer_acceso, Timestamp ultimo_acceso, String ultima_ip, Date fecha_modificacion) {
        this.codigo = codigo;
        this.apellido = apellidos;
        this.nombre = nombres;
        this.email = email;
        this.cedula = cedula;
        this.clave = clave;
        this.primer_acceso = primer_acceso;
        this.ultimo_acceso = ultimo_acceso;
        this.ultima_ip = ultima_ip;
        this.fecha_modificacion = fecha_modificacion;
    }

    public Usuario(String usu, String usu0, String usu1, String usu2, String usu3) {
        this.apellido = usu;
        this.nombre = usu0;
        this.email = usu1;
        this.cedula = usu2;
        this.clave = usu3;    }

    public Date getFecha_modificacion() {
        return fecha_modificacion;
    }

    public void setFecha_modificacion(Date fecha_modificacion) {
        this.fecha_modificacion = fecha_modificacion;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellidos) {
        this.apellido = apellidos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombres) {
        this.nombre = nombres;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public Timestamp getPrimer_acceso() {
        return primer_acceso;
    }

    public void setPrimer_acceso(Timestamp primer_acceso) {
        this.primer_acceso = primer_acceso;
    }

    public Timestamp getUltimo_acceso() {
        return ultimo_acceso;
    }

    public void setUltimo_acceso(Timestamp ultimo_acceso) {
        this.ultimo_acceso = ultimo_acceso;
    }

    public String getUltima_ip() {
        return ultima_ip;
    }

    public void setUltima_ip(String ultima_ip) {
        this.ultima_ip = ultima_ip;
    }
    
    
    
}
