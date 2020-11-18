package com.customercrud.customerfeedback.repository;

import com.customercrud.customerfeedback.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
