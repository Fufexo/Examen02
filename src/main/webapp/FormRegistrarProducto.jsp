<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Producto</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #789687;">
    <div class="container">
        <h1 class="text-center mt-5">Registrar Producto</h1>
        <p class="text-center"><a href="ListadoProducto.jsp">Ver Listado de Productos</a></p>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="controladorProducto" method="post" class="mt-4 p-4 border rounded bg-white">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" id="nombre" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="precioventa">Precio de Venta</label>
                        <input type="number" name="precioventa" id="precioventa" class="form-control" step="0.01" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="preciocompra">Precio de Compra</label>
                        <input type="number" name="preciocompra" id="preciocompra" class="form-control" step="0.01" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="estado">Estado</label>
                        <input type="text" name="estado" id="estado" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="descripcion">Descripcion</label>
                        <input type="text" name="descripcion" id="descripcion" class="form-control" required>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Registrar Producto</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
