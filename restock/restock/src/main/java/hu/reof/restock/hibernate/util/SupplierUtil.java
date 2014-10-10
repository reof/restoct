/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.hibernate.util;

import hu.reof.restock.hibernate.Supplier;
import org.hibernate.Session;


/**
 *
 * @author Ati
 */
public class SupplierUtil {
    
    private static GenericDBUtil<Supplier> util;

    public static GenericDBUtil<Supplier> getUtil(Session session) {
        if (util == null) {
            util = new GenericDBUtil<>(Supplier.class);
        }
        util.setSession(session);
        return util;
    }

    public static void closeSession(GenericDBUtil.DB db) {
        if (util == null) {
            return;
        }
        util.closeSession(db);
    }
    
}
