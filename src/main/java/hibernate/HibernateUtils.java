package hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

/**
 * Created by Mohru on 07.02.2017.
 */
public class HibernateUtils {
    private static SessionFactory ourSessionFactory;
    private static ServiceRegistry serviceRegistry;

    private static SessionFactory buildSessionFactory() {
        try {
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");

            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            ourSessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }

        return ourSessionFactory;
    }

    public static Session getSession() throws HibernateException {

        if (ourSessionFactory == null)
            buildSessionFactory();

        return ourSessionFactory.openSession();
    }

    /*  odpowiednik Session (Session dziedziczy po EntityManager) podbierany z konfiguracji JPA */
    public static EntityManager getEntityManager() {
        EntityManager entityManager = Persistence
                .createEntityManagerFactory("NewPersistenceUnit")
                .createEntityManager();

        return entityManager;
    }
}