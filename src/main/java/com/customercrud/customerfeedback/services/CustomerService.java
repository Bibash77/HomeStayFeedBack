package com.customercrud.customerfeedback.services;

import com.customercrud.customerfeedback.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAllCustomer();
    Customer findById(Integer id);
    void addCustomer(Customer customer);
    void updateCustomer(Customer customer);
    void deleteCustomer(Integer id);
}
