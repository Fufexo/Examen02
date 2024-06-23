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
</head>
<body bgcolor="#c5dec9">
	<h1 align="center">Listado de Productos Registrados en BD</h1>

	<h2 align="center">
		<a href="FormRegistrarProducto.jsp" style="text-decoration: none; color:blue;">Registrar Producto</a>
	</h2>

	<% 
		ClassProductoImp crud = new ClassProductoImp();
		List<TblProductocl2> listaProductos = crud.ListadoProducto();
	%>

	<table border="2" align="center">
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>Precio Venta</th>
			<th>Precio Compra</th>
			<th>Estado</th>
			<th>Descripcion</th>
		</tr>

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
	</table>
</body>
</html>