<%@ page import="dao.ClassProductoImp" %>
<%@ page import="model.TblProductocl2" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Productos</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #789687;">
    <div class="container">
        <h1 class="text-center mt-5">Listado de Productos Registrados en BD</h1>
        <h2 class="text-center">
            <a href="FormRegistrarProducto.jsp" style="text-decoration: none; color:blue;">Registrar Producto</a>
        </h2>

        <%
            ClassProductoImp crud = new ClassProductoImp();
            List<TblProductocl2> listaProductos = crud.ListadoProducto();
        %>

        <div class="table-responsive mt-4">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Precio Venta</th>
                        <th>Precio Compra</th>
                        <th>Estado</th>
                        <th>Descripcion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if (listaProductos != null) {
                        for (TblProductocl2 producto : listaProductos) {
                    %>
                    <tr>
                        <td><%= producto.getIdproductocl2() %></td>
                        <td><%= producto.getNombrecl2() %></td>
                        <td><%= producto.getPrecioventacl2() %></td>
                        <td><%= producto.getPreciocompcl2() %></td>
                        <td><%= producto.getEstadocl2() %></td>
                        <td><%= producto.getDescripcl2() %></td>
                    </tr>
                    <%
                        }
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
