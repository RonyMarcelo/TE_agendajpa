<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contacto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <h1>Lista</h1>
        <p><a href="MainControler?action=add">Nuevo</a></p>
        <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Telefono</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                    for (Contacto item : lista){
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getCorreo()%></td>
                    <td><%= item.getTelefono() %></td>
                    <td><a href="MainControler?action=edit&id=<%= item.getId() %>">Editar</a></td>
                    <td><a href="MainControler?action=delete&id=<%= item.getId() %>" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                </tr>
              <%
              }
              %>
        </table>
    </body>
</html>
