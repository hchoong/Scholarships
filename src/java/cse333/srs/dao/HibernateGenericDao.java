/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.config.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Howie
 */
public abstract class HibernateGenericDao implements GenericDao {

    private Class persistentClass;

    public HibernateGenericDao(Class persistentClass) {
        this.persistentClass = persistentClass;
    }

    @Override
    public Object findById(Long id) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Object object = (Object) session.get(persistentClass, id);
        return object;
    }

    @Override
    public void saveOrUpdate(Object o) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        session.saveOrUpdate(o);
    }

    @Override
    public void delete(Object object) {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        session.delete(object);
    }

    @Override
    public List findAll() {
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.getCurrentSession();
        Criteria criteria = session.createCriteria(persistentClass);
        List objects = criteria.list();
        return objects;
    }
}
