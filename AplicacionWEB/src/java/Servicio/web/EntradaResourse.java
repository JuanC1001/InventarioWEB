/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio.web;

import java.util.ArrayList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import rnegocio.entidades.*;
import rnegocio.funciones.FEntrada;

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
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<Entrada> getXml() throws Exception {
        //TODO return proper representation object
        ArrayList<Entrada> lista = new ArrayList<Entrada>();
        lista = FEntrada.entrada_buscartodos();
        return lista;
    }

    /**
     * PUT method for updating or creating an instance of EntradaResource
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}
