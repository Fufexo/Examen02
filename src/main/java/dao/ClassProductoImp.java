package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.IProducto;
import model.TblProductocl2;

public class ClassProductoImp implements IProducto{

	@Override
	public void RegistrarProducto(TblProductocl2 producto) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("LPII_CL2_FOURNIERSOTOFABRIZIO");
        EntityManager em=fabr.createEntityManager();
        em.getTransaction().begin();
        em.persist(producto);
        System.out.println("Producto registrado en la BD correctamente");
        em.getTransaction().commit();
        em.close();
	}

	@Override
	public List<TblProductocl2> ListadoProducto() {
		EntityManagerFactory fabr = Persistence.createEntityManagerFactory("LPII_CL2_FOURNIERSOTOFABRIZIO");
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		List<TblProductocl2> listadoproductos=em.createQuery("select p from TblProductocl2 p",TblProductocl2.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return listadoproductos;
	}

}
