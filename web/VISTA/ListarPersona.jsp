<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Personas</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Personas</h1>
            <a class="btn btn-success" href="Controladora?f_accion=agregarpersona01">Agregar Persona</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">N</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellidos</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">Dirección</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        PersonaDAO personaDAO = new PersonaDAO();
                        List<Persona> personas = personaDAO.listapersona();
                        Iterator<Persona> iterator = personas.iterator();
                        Persona persona = null;
                        while (iterator.hasNext()) {
                            persona = iterator.next();

                    %>
                    <tr>
                        <td class="text-center"><% out.print(persona.getIdpersona()); %></td>
                        <td><% out.print(persona.getNombre()); %></td>
                        <td><% out.print(persona.getApellidos()); %></td>
                        <td class="text-center"><% out.print(persona.getDni()); %></td>
                        <td><% out.print(persona.getDireccion()); %></td>
                        <td class="text-center"><% out.print(persona.getEstado()); %></td>                        
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controladora?f_accion=editarpersona01&f_idpersona=<% out.print(persona.getIdpersona()); %>">Editar</a>
                            <a class="btn btn-danger" href="Controladora?f_accion=eliminarpersona&f_idpersona=<% out.print(persona.getIdpersona()); %>">Eliminar</a>
                        </td>
                    </tr>
                    
                    <% 
                        }
                    %>
                </tbody>
                <tr align ='center' >
                            <td class="btn-info" colspan="9" ><a href="index.html"><input type="button" value="SALIR" name="f_salir" /></a></td>   
                        </tr>
            </table>

        </div>
    </body>
</html>
