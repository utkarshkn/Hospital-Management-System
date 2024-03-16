package com.HMS.docloginRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.HMS.docloginEntity.Medicine;

@Repository
public interface MedicineRepository extends JpaRepository<Medicine, Integer>{

}
