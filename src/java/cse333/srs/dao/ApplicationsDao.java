/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Applications;

/**
 *
 * @author Howie
 */
public class ApplicationsDao extends HibernateGenericDao {
    
    public ApplicationsDao() {
        super(Applications.class);
    }
}
