/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.UserDAO.session;
import POJOS.Cart;
import POJOS.UserMaster;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author krunal
 */
public class CartDAO {
    public static void createCart(Cart e){
            session = HibernateUtil.getSessionFactory().openSession();
            Transaction t=session.beginTransaction();
            session.save(e);
            t.commit();
           
        }
    public static List<Cart> fetchCartItems(String sessionId){
            String hql = "from Cart where session_id='"+sessionId+"'";
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(hql);
            List<Cart> users = query.list();
            
            return users;
        }
    
}
