/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.dao;

import java.util.List;

/**
 *
 * @author Howie
 */
public interface GenericDao {

    public Object findById(Long id);

    public void saveOrUpdate(Object o);

    public void delete(Object o);

    public List findAll();
}
