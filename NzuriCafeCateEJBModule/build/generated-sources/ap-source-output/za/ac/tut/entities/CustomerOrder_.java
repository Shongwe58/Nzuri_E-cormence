package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.Item;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-16T19:57:59")
@StaticMetamodel(CustomerOrder.class)
public class CustomerOrder_ { 

    public static volatile SingularAttribute<CustomerOrder, Address> customerAddress;
    public static volatile ListAttribute<CustomerOrder, Item> orderedItems;
    public static volatile SingularAttribute<CustomerOrder, Long> id;
    public static volatile SingularAttribute<CustomerOrder, Date> creationDate;
    public static volatile SingularAttribute<CustomerOrder, Double> orderValue;

}