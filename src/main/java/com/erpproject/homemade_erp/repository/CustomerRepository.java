package com.erpproject.homemade_erp.repository;

import com.erpproject.homemade_erp.model.Customer;


import com.erpproject.homemade_erp.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
