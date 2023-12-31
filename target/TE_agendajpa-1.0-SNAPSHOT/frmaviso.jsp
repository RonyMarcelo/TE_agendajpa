<%@page import="com.emergentes.entidades.Contacto"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Contacto contacto = (Contacto) request.getAttribute("contacto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
        <h1>
            <c:if test="${contacto.id == 0}">Nuevo</c:if>
            <c:if test="${contacto.id != 0}">Editar</c:if>
        </h1>
        <form action="MainControler" method="post">
            <input type="hidden" name="id" value="<%= contacto.getId() %>" />
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" value="<%= contacto.getNombre()%>" /></td>
                </tr>
                <tr>
                    <td>Correo:</td>
                    <td>
                        <input type="text" name="correo" value="<%= contacto.getCorreo()%>" />
                    </td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td>
                        <input type="text" name="telefono" value="<%= contacto.getTelefono()%>" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
