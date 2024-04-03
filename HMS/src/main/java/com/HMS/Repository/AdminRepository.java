package com.HMS.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.HMS.LoginEntity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>{

	boolean existsByEmail(String email);

    boolean existsByPassword(String password);
    
    Admin findByEmailAndPassword(String email, String password);

}
