package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassProductoImp;
import model.TblProductocl2;

/**
 * Servlet implementation class controladorProducto
 */
public class controladorProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controladorProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		TblProductocl2 producto = new TblProductocl2();
		ClassProductoImp crud = new ClassProductoImp();
		List<TblProductocl2> listadoproductos = crud.ListadoProducto();
		
		request.setAttribute("listadoproductos", listadoproductos);
		
		request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String nombre = request.getParameter("nombre");
        double precioVenta = Double.parseDouble(request.getParameter("precioventa"));
        double precioCompra = Double.parseDouble(request.getParameter("preciocompra"));
        String estado = request.getParameter("estado");
        String descripcion = request.getParameter("descripcion");

        TblProductocl2 producto = new TblProductocl2();
        ClassProductoImp crud = new ClassProductoImp();
        
        producto.setNombrecl2(nombre);
        producto.setPrecioventacl2(precioVenta);
        producto.setPreciocompcl2(precioCompra);
        producto.setEstadocl2(estado);
        producto.setDescripcl2(descripcion);
        
        crud.RegistrarProducto(producto);
        
		List<TblProductocl2> listadoproductos = crud.ListadoProducto();
		
		request.setAttribute("listadoproductos", listadoproductos);
        request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
	}

}
