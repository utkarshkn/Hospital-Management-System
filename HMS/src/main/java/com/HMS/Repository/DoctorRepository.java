package com.HMS.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.HMS.AllEntity.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer>{
	
	boolean existsByEmail(String email);

    boolean existsByPassword(String password);
    
    Doctor findByEmailAndPassword(String email, String password);

}
