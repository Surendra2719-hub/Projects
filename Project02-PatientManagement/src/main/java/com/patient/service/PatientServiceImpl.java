package com.patient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.patient.entity.Patient;
import com.patient.repository.PatientRepository;

@Service
public class PatientServiceImpl implements PatientService {
    
	@Autowired
    private PatientRepository repository;

    @Override
    public Patient savePatient(Patient patient) {
        return repository.save(patient);
    }

    @Override
    public List<Patient> getAllPatients() {
        return repository.findAll();
    }

    @Override
    public Patient getPatientById(Long id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public void deletePatient(Long id) {
        repository.deleteById(id);
    }

}