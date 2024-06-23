package testEntidades;

import java.util.List;

import dao.ClassUsuarioImp;
import model.TblUsuariocl2;

public class testEntidadUsuario {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		TblUsuariocl2 usuario = new TblUsuariocl2();
		ClassUsuarioImp crud = new ClassUsuarioImp();
		/*
		usuario.setUsuariocl2("Fabrizio123");
		usuario.setPasswordcl2("Fournier123");
		crud.RegistrarUsuario(usuario);
		*/
		List<TblUsuariocl2> listado = crud.ListadoUsuario();
		for(TblUsuariocl2 lis:listado) {
			System.out.println("usuario: " + lis.getUsuariocl2() + " password: " + lis.getPasswordcl2());
		}
	}

}
