import hibernate.HibernateUtils;
import hibernate.UsersEntity;
import org.hibernate.Session;
import org.hibernate.query.Query;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Mohru on 07.02.2017.
 */
public class UserHDAO {

    public List<UsersEntity> getAllUsers() {

        Session session = HibernateUtils.getSession();

        session.beginTransaction();
        Query<UsersEntity> query = session.createQuery("from UsersEntity", UsersEntity.class);
        List<UsersEntity> users = query.getResultList();

        session.getTransaction().commit();
        session.close();

        return users;
    }

    public List<UsersEntity> getAllUsersJPA() {

        EntityManager entityManager = HibernateUtils.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

        TypedQuery<UsersEntity> usersQuery = entityManager.createQuery("from UsersEntity ", UsersEntity.class);
        List<UsersEntity> usersList = usersQuery.getResultList();

        transaction.commit();
        entityManager.close();

        return usersList;
    }

    public void insertUser(UsersEntity user) {

        try (Session session = HibernateUtils.getSession()) {
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
        }
    }
}
