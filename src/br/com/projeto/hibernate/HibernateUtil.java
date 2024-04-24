package br.com.projeto.hibernate;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.service.ServiceRegistry;

import br.com.projeto.model.Filme;

public class HibernateUtil {
	
	@PersistenceUnit
	protected static EntityManager em = null;
	
	private static final SessionFactory sessionFactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {

		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder();
		serviceRegistryBuilder.applySettings(configuration.getProperties());
		ServiceRegistry serviceRegistry = serviceRegistryBuilder.build();
		return configuration.buildSessionFactory(serviceRegistry);
	}

	public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}

	public static void salvar(Object object) {

		Session session = getSessionfactory().openSession();
		session.beginTransaction();
		session.save(object);
		session.getTransaction().commit();
		session.close();
	}

	public static List buscar(Object object) {

		Session session = getSessionfactory().openSession();

		List lista = session.createCriteria(object.getClass()).add(Example.create(object)).list();

		session.close();

		return lista;
	}
	public static Filme getById(Integer id) {
		Query query = em.createQuery("SELECT i FROM Filme i WHERE i.id like :id");
		
		query.setParameter("id", id);
		return (Filme) query.getSingleResult();	
	}

	public static void excluir(Integer id) {
	    EntityTransaction transaction = em.getTransaction();
	    transaction.begin();
	    Query query = em.createQuery("DELETE FROM Filme f WHERE f.id = :id");
	    query.setParameter("id", id);
	    query.executeUpdate();
	    transaction.commit();
	}
}
