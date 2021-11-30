package com.luv2code.springdemo.dao;

import com.luv2code.springdemo.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Repository
class CustomerDAOImpl implements CustomerDAO{
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<Customer> getCustomers() {
     Session session=sessionFactory.getCurrentSession();
        List<Customer> query= session.createQuery("from Customer order by firstName                                                                                                                                                                                                                     ",Customer.class).getResultList();
     //  List<Customer> customer=query.getResultList();
        return query;
    }
    @Override
    @Transactional
    public void saveCustomer(Customer theCustomer) {
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(theCustomer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int id) {
        Session session=sessionFactory.getCurrentSession();
        Customer customer= session.get(Customer.class,id);
         return customer;
    }

    @Override
    @Transactional
    public void deleteCustomer(int id) {
        Session session=sessionFactory.getCurrentSession();

     //   session.createQuery("delete from customer where id='id'").executeUpdate();
       Customer customer= session.get(Customer.class,id);
       session.delete(customer);

    }
}
