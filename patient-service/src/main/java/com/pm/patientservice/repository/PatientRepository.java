package com.pm.patientservice.repository;

import com.pm.patientservice.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;

@Repository
public interface PatientRepository extends JpaRepository<Patient, UUID> {
    boolean existsByDni(String dni);
    boolean existsByEmail(String email);
    boolean existsByDniAndEmailAndIdNot(String dni, String email, UUID id);
}
