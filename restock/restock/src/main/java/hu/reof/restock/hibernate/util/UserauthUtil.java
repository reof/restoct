/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.hibernate.util;

/**
 *
 * @author Ati
 */
import hu.reof.restock.hibernate.Userauth;
import hu.reof.restock.hibernate.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;


public class UserauthUtil {

    public static Userauth getUserauthByUsernev(String usernev) {
        Transaction tx = null;
        Userauth userauth = null;
        try {
            Session session = HibernateUtil.currentSession();
            tx = session.beginTransaction();
            userauth = (Userauth) session.get(Userauth.class, usernev);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return userauth;
    }

    public static void createUserauth(String usernev, String jelszo) {
        Transaction tx = null;

        try {
            Userauth userauth = new Userauth(usernev, usernev, new ShaPasswordEncoder(256).encodePassword(jelszo, usernev), 1, 0, null, null);
            Session session = HibernateUtil.currentSession();
            tx = session.beginTransaction();
            session.saveOrUpdate(userauth);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
    }

}
