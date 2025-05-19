/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.CustomerOrder;

/**
 *
 * @author shong
 */
@Local
public interface CustomerOrderFacadeLocal {

    void create(CustomerOrder customerOrder);

    void edit(CustomerOrder customerOrder);

    void remove(CustomerOrder customerOrder);

    CustomerOrder find(Object id);

    List<CustomerOrder> findAll();

    List<CustomerOrder> findRange(int[] range);

    int count();
    
}
