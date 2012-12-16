/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.config.HibernateUtil;
import cse333.srs.domain.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Howie
 */
public class UsersDao extends HibernateGenericDao {

    public UsersDao() {
        super(Users.class);
    }

    public Object findByUsername(String un) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Query q = session.getNamedQuery("Users.findByUsername").setString("username", un);
        return q.uniqueResult();
    }
    
    public Object findByLogin(String un, String pw) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Query q = session.createQuery("from Users as u where u.username = :username and u.password = :password");
        q.setString("username", un);
        q.setString("password", pw);
        return q.uniqueResult();
    }
}
