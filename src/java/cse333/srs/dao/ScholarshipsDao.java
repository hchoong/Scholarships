/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.config.HibernateUtil;
import cse333.srs.domain.Scholarships;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Howie
 */
public class ScholarshipsDao extends HibernateGenericDao {

    public ScholarshipsDao() {
        super(Scholarships.class);
    }

    public Object findByScholarshipsId(int id) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Query q = session.getNamedQuery("Scholarships.findByScholarshipsId").setInteger("scholarshipsId", id);
        return q.uniqueResult();
    }
}
