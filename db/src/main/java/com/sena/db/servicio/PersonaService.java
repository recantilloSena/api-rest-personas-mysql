package com.sena.db.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sena.db.modelo.Persona;
import com.sena.db.repositorio.PersonaRepository;

@Service

public class PersonaService {
    
    @Autowired
    PersonaRepository personaRepository;

    public List<Persona> findAll() {
        return personaRepository.findAll();
    }

    public List<Persona> getPersonasDeportesTerrestres(String tipo) {
        return personaRepository.listarDeportesTerrestres(tipo);
    }

}
