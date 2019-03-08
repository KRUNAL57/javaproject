/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import POJOS.OrderMaster;
import POJOS.Orders;
import POJOS.UserMaster;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author krunal
 */
public class OrderDAO {
    static Session session = HibernateUtil.getSessionFactory().openSession();
    public static void createOrder(OrderMaster e){
        //session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.save(e);
        t.commit();
    }
    public static void insertOrder(Orders e){
        //session = HibernateUtil.getSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        session.save(e);
        t.commit();
    }
    public static OrderMaster getOrderId(UserMaster e,Date d){
        String hql = "from OrderMaster where userMaster.userId="+e.getUserId()+" and orderDate=CURRENT_DATE";
        //session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<OrderMaster> users = query.list();
        OrderMaster obj=null;
        if(!users.isEmpty()){
            obj = users.get(users.size()-1);
        }
         return obj;
    }
    public static List<OrderMaster> getOrderList(UserMaster e){
        String hql = "from OrderMaster where userMaster.userId='"+e.getUserId()+"'";
        //session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery(hql);
        List<OrderMaster> users = query.list();
        return users;
    }
    
}
