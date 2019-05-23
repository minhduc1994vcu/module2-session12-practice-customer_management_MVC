package com.codegym.service;

import com.codegym.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1,"Nam","nam@codegym.com","Ha Noi"));
        customers.put(2, new Customer(2,"Thu","thu@gmail.com","Ha Nam"));
        customers.put(3, new Customer(3,"Vinh","vinh@gmail.com","Bac Ninh"));
        customers.put(4, new Customer(4,"Trung","trung@codegym.com","Nam Dinh"));
        customers.put(5, new Customer(5,"Hoai","hoai@codegym.com","Bac Giang"));
        customers.put(6, new Customer(6,"Dang","dang@gmail.com","Sai Gon"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(),customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.replace(id, customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}
