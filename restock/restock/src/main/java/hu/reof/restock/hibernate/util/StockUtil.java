/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.hibernate.util;

import hu.reof.restock.hibernate.Stock;
import org.hibernate.Session;

/**
 *
 * @author fulopattila
 */
public class StockUtil {
    
    private static GenericDBUtil<Stock> util;

    public static GenericDBUtil<Stock> getUtil(Session session) {
        if (util == null) {
            util = new GenericDBUtil<>(Stock.class);
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
