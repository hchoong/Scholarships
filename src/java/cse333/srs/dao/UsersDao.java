/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import cse333.srs.domain.Users;

/**
 *
 * @author Howie
 */
public class UsersDao extends HibernateGenericDao {

    public UsersDao() {
        super(Users.class);
    }
}
