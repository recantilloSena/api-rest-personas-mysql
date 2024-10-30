package com.sena.db.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.sena.db.modelo.Persona;
import com.sena.db.servicio.PersonaService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@RestController
public class PersonaController {

    @Autowired
    PersonaService personaService;

    @GetMapping("/personas")
    public List<Persona> getPersonas() {
        return personaService.findAll();
    }

    @GetMapping("/personas/{tipo}")
    public List<Persona> getPersonasDeportesTerrestres(@PathVariable String tipo) {
        return personaService.getPersonasDeportesTerrestres(tipo);
    }
    
    
}
