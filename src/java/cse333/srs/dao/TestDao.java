/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Test;

/**
 *
 * @author Howie
 */
public class TestDao extends HibernateGenericDao {
    
    public TestDao() {
        super(Test.class);
    }
}
