/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Criteria;

/**
 *
 * @author Howie
 */
public class CriteriaDao extends HibernateGenericDao {

    public CriteriaDao() {
        super(Criteria.class);
    }
}
