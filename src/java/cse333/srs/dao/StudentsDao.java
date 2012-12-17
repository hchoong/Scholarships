/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Students;

/**
 *
 * @author Howie
 */
public class StudentsDao extends HibernateGenericDao {
    
    public StudentsDao() {
        super(Students.class);
    }
    
}
