/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hu.reof.restock.hibernate.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author fulopattila
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;
    
    static {
        try {
            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public static Session currentSession() {
        return sessionFactory.getCurrentSession();
    }

    public static Session openSession() {
        return sessionFactory.openSession();
    }

    public static void closeSession(Session session, GenericDBUtil.DB db) {
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
            e.printStackTrace();
        }
        if (session.isOpen()) {
            session.close();
        }
        session = null;
    }
}
