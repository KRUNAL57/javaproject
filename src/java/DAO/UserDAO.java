/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import POJOS.UserMaster;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;
/**
 *
 * @author Admin
 */
public class UserDAO {
    static Session session = null;
    public static void createUser(UserMaster e){
        session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.save(e);
        t.commit();
        session.close();
    }
    
}
