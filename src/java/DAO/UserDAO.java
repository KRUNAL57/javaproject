/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import POJOS.UserMaster;
import java.util.List;
import org.hibernate.Query;
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
    public static UserMaster loginuser(String username,String password){
        String hql = "from UserMaster where email='"+username+"' and password='"+password+"'";
        session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<UserMaster> users = query.list();
        session.close();
        UserMaster obj=null;
        if(!users.isEmpty()){
            obj = users.get(0);
        }
            
         return obj;
    }
}
