package com.patient.controller;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.patient.entity.Patient;
import com.patient.service.PatientService;

@Controller
public class PatientController {

    @Autowired
    private PatientService service;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/addPatient")
    public String addPatient() {
        return "addPatient";
    }

    @PostMapping("/savePatient")
    public String savePatient(Patient patient) {

        LocalDate date = LocalDate.now();
        LocalTime time = LocalTime.now();

        patient.setAdmissionDate(date.toString());

        patient.setAdmissionTime(time.withNano(0).toString());

        service.savePatient(patient);

        return "redirect:/viewPatient";
    }

    @GetMapping("/viewPatient")
    public String viewPatient(Model model) {

        model.addAttribute("patients", service.getAllPatients());

        return "viewPatient";
    }

    @GetMapping("/editPatient/{id}")
    public String editPatient(@PathVariable Long id, Model model) {

        model.addAttribute("patient", service.getPatientById(id));

        return "updatePatient";
    }

    @PostMapping("/updatePatient")
    public String updatePatient(Patient patient) {

        service.savePatient(patient);

        return "redirect:/viewPatient";
    }

    @GetMapping("/deletePatient/{id}")
    public String deletePatient(@PathVariable Long id) {

        service.deletePatient(id);

        return "redirect:/viewPatient";
    }

}