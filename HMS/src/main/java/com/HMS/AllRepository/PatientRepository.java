package com.HMS.AllRepository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.HMS.LoginEntity.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer>{

}
