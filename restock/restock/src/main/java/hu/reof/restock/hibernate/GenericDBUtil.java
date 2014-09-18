package hu.reof.restock.hibernate;

import java.io.Serializable;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Peter
 * @param <T>
 */
public class GenericDBUtil<T extends Serializable> {

    public enum DB {

        COMMIT, ROLLBACK
    }

    private Class<T> clazz;
    private Session session;
    private boolean noSession;

    public GenericDBUtil(Class<T> clazz) {
        this.clazz = clazz;
    }

    private Transaction startTransaction() {
        if (noSession) {
            session = HibernateUtil.currentSession();
        }
        return session.beginTransaction();
    }

    public void closeSession(GenericDBUtil.DB db) {
        if (session == null) {
            return;
        }
        try {
            session.flush();
            if (session.getTransaction().isActive()) {
                if (db == GenericDBUtil.DB.COMMIT) {
                    session.getTransaction().commit();
                } else {
                    session.getTransaction().rollback();
                }
            }
        } catch (HibernateException e) {
        }
        if (session.isOpen()) {
            session.close();
        }
        session = null;
    }

    public boolean persist(T type) {
        Transaction tx = startTransaction();
        try {
            session.persist(type);
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return true;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return false;
    }

    public boolean saveOrUpdate(T type) {
        Transaction tx = startTransaction();
        try {
            session.saveOrUpdate(type);
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return true;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return false;
    }

    public T getTypeById(long id) {
        Transaction tx = startTransaction();
        try {
            T t = (T) session.get(clazz, id);
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return t;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return null;
    }

    public T getTypeBynev(String nev) {
        Transaction tx = startTransaction();
        try {
            Query q = session.createQuery("from " + clazz.getName() + " as var where var.nev = :nev").setString("nev", nev);
            T t = null;
            List<T> l = q.list();
            if (l != null && !l.isEmpty()) {
                t = l.get(0);
            }
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return t;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return null;
    }

    public List<T> getAllType() {
        Transaction tx = startTransaction();
        try {
            Query q = session.createQuery("from " + clazz.getName() + " ORDER BY nev");
            List list = q.list();
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return list;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return null;
    }

    public List<T> getTypesByQuery(String where) {
        Transaction tx = startTransaction();
        try {
            Query q = session.createQuery("from " + clazz.getName() + ((where == null || where.isEmpty()) ? "" : (" WHERE " + where)));
            List list = q.list();
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return list;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return null;
    }

    public List<Object> getObjectsBySQLQuery(String sql) {
        Transaction tx = startTransaction();
        try {
            Query q = session.createSQLQuery(sql);
            List list = q.list();
            tx.commit();
            if (noSession && session.isOpen()) {
                session.close();
            }
            return list;
        } catch (HibernateException e) {
            if (noSession) {
                if (tx != null && tx.isActive()) {
                    tx.rollback();
                    if (session.isOpen()) {
                        session.close();
                    }
                }
                e.printStackTrace();
            } else {
                throw e;
            }
        }
        return null;
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        if (this.session != null && this.session.equals(session)) {
            return;
        }
        if (this.session != null && this.session.isOpen()) {
            this.session.close();
        }
        this.session = session;
        this.noSession = session == null;
    }
}
