<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Area</title>
    </head>
    <body>
        <div>
            <%
                AreaDAO areaDAO = new AreaDAO();
                int s_idarea = Integer.valueOf(request.getParameter("f_idarea"));
                Area area = (Area)areaDAO.buscararea(s_idarea);                
            %>
            <form name="EditarAreaForm" action="Controladora" method="get">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2">Editar Areas</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre: </td>
                            <td><input type="text" name="f_nombre" value="<% out.print(area.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Estado: </td>
                            <td><input type="text" name="f_estado" value="<% out.print(area.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="editar" value="Editar Area" />
                                <input type="hidden" name="f_accion" value="editararea02" />
                                <input type="hidden" name="f_idarea" value="<% out.print(area.getIdarea()); %>" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
            
        </div>
    </body>
</html>
