/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio.web;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import rnegocio.funciones.*;
import java.util.ArrayList;
import rnegocio.entidades.Producto;


/**
 * REST Web Service
 *
 * @author MI PC
 */
@Path("producto")
public class ProductoResourse {


    @Context
    private UriInfo context;

    /**
     * Creates a new instance of ProductoResource
     */
    public ProductoResourse() {
    }

    /**
     * Retrieves representation of an instance of Servicio.web.ProductoResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<Producto> getXml() throws Exception {
        //TODO return proper representation object
        ArrayList<Producto> lista=new ArrayList<Producto>();
        lista=FProducto.producto_buscartodos();
        return lista;
    }

    /**
     * PUT method for updating or creating an instance of ProductoResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}
