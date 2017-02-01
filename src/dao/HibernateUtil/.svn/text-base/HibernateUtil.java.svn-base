package dao.HibernateUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class HibernateUtil {
	private static SessionFactory sessionFactory;

	static {
		try {
			sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();

		} catch (Exception e) {
			e.getMessage();
			e.toString();
		}
	}

	public static synchronized SessionFactory getSessionfactory() {
		return sessionFactory;
	}
}