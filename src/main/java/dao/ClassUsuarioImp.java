package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.IUsuario;
import model.TblUsuariocl2;

public class ClassUsuarioImp implements IUsuario {

	@Override
	public void RegistrarUsuario(TblUsuariocl2 usuario) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("LPII_CL2_FOURNIERSOTOFABRIZIO");
        EntityManager em=fabr.createEntityManager();
        em.getTransaction().begin();
        em.persist(usuario);
        System.out.println("Usuario registrado en la BD correctamente");
        em.getTransaction().commit();
        em.close();
	}

	@Override
	public List<TblUsuariocl2> ListadoUsuario() {
		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("LPII_CL2_FOURNIERSOTOFABRIZIO");
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		List<TblUsuariocl2> listadousuarios=em.createQuery("select u from TblUsuariocl2 u",TblUsuariocl2.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return listadousuarios;
	}
}
