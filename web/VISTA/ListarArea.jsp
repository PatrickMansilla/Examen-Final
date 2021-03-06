<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Area"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Area</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Areas</h1>
            <a class="btn btn-success" href="Controladora?f_accion=agregararea01">Agregar Area</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">N</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        AreaDAO areaDAO = new AreaDAO();
                        List<Area> areas = areaDAO.listaarea();
                        Iterator<Area> iterator = areas.iterator();
                        Area area = null;
                        while (iterator.hasNext()) {
                            area = iterator.next();

                    %>
                    <tr>
                        <td class="text-center"><% out.print(area.getIdarea()); %></td>
                        <td><% out.print(area.getNombre()); %></td>
                        <td class="text-center"><% out.print(area.getEstado()); %></td>                        
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controladora?f_accion=editararea01&f_idarea=<% out.print(area.getIdarea()); %>">Editar</a>
                            <a class="btn btn-danger" href="Controladora?f_accion=eliminararea&f_idarea=<% out.print(area.getIdarea()); %>">Eliminar</a>
                        </td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>

        </div>
    </body>
</html>
