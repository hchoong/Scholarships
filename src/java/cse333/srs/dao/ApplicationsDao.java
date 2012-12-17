/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.config.HibernateUtil;
import cse333.srs.domain.Applications;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Howie
 */
public class ApplicationsDao extends HibernateGenericDao {

    public ApplicationsDao() {
        super(Applications.class);
    }

    public List findByStudentsId(int id) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Query q = session.getNamedQuery("Applications.findByStudentsId").setInteger("studentsId", id);
        return q.list();
    }
}
