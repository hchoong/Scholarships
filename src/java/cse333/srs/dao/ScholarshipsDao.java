/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Scholarships;

/**
 *
 * @author Howie
 */
public class ScholarshipsDao extends HibernateGenericDao {

    public ScholarshipsDao() {
        super(Scholarships.class);
    }
}
