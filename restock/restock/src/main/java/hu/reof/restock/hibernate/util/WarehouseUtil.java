package hu.reof.restock.hibernate.util;

import hu.reof.restock.hibernate.Warehouse;
import org.hibernate.Session;

/**
 *
 * @author Ati
 */
public class WarehouseUtil {

    private static GenericDBUtil<Warehouse> util;

    public static GenericDBUtil<Warehouse> getUtil(Session session) {
        if (util == null) {
            util = new GenericDBUtil<>(Warehouse.class);
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
