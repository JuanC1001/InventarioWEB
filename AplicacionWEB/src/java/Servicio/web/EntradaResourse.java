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
import rnegocio.entidades.Entrada;
import rnegocio.entidades.Reporte;


/**
 * REST Web Service
 *
 * @author MI PC
 */
@Path("entrada")
public class EntradaResourse {


    @Context
    private UriInfo context;

    /**
     * Creates a new instance of EntradaResource
     */
    public EntradaResourse() {
    }

    /**
     * Retrieves representation of an instance of Servicio.web.EntradaResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<Reporte> getXml() throws Exception {
        //TODO return proper representation object
        ArrayList<Reporte> lista=new ArrayList<Reporte>();
        lista=FReporte.reporte_entrada();
        return lista;
    }

    /**
     * PUT method for updating or creating an instance of EntradaResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}
