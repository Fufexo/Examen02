package testEntidades;

import java.util.List;

import dao.ClassProductoImp;
import model.TblProductocl2;

public class testEntidadProducto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TblProductocl2 producto = new TblProductocl2();
		ClassProductoImp crud = new ClassProductoImp();
		/*
		producto.setNombrecl2("Arroz Costeño");
		producto.setPrecioventacl2(5.5);
		producto.setPreciocompcl2(3.5);
		producto.setEstadocl2("Nuevo");
		producto.setDescripcl2("Arroz costeño por kilo");
		
		crud.RegistrarProducto(producto);
		*/
		
		List<TblProductocl2> listado = crud.ListadoProducto();
		for(TblProductocl2 lis:listado) {
			
			System.out.println("nombre: " + lis.getNombrecl2()+ " precioventa: " + lis.getPrecioventacl2() +
					" preciocompra: " + lis.getPreciocompcl2() + " estado: " + lis.getEstadocl2() + " descripcion: " + lis.getDescripcl2());
		}
	
	
	}

}
