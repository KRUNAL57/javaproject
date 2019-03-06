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
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author krunal
 */
public class CartDAO {
     static Session session = HibernateUtil.getSessionFactory().openSession();
    public static void createCart(Cart e){
        if(e.getQuantity()==1){
            Transaction t=session.beginTransaction();
            session.save(e);
            t.commit();
        }else{
            System.out.println(e.getQuantity());
            //session = HibernateUtil.getSessionFactory().openSession();
            Transaction t=session.beginTransaction();
            session.update(e);
            t.commit();
        }
            
           
    }
    public static List<Cart> fetchCartItems(String sessionId){
            String hql = "from Cart where session_id='"+sessionId+"'";
            //session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(hql);
            List<Cart> users = query.list();        
            return users;
        }
     public static Cart fetchProduct(String sessionId,String product_id){
            String hql = "from Cart where session_id='"+sessionId+"' and product_id="+product_id;
            //session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(hql);
            Cart c = null;
            List<Cart> users = users=query.list();
            if(!users.isEmpty()){
                c = users.get(0);
            }
            return c;
        }   
    public static List<Object> generateTotal(String sessionId){
        String sql = "SELECT sum(price) as total_amount FROM cart inner join product_master WHERE cart.product_id=product_master.product_id and cart.session_id='"+sessionId+"'";
        Query q = session.createSQLQuery(sql);
        List<Object> e = q.list();
        return e;
    }
    
}
