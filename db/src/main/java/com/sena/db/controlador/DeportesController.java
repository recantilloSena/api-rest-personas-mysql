package com.sena.db.controlador;

import org.springframework.web.bind.annotation.RestController;

import com.sena.db.modelo.Deportes;
import com.sena.db.servicio.DeportesService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;





@RestController
public class DeportesController {

    @Autowired
    DeportesService deportesService;

    @GetMapping("/ping")
    public String getMethodName() {
        return new String("ping");
    }

    @GetMapping("/deportes")
    public List<Deportes> getDeportes() {
        return deportesService.findAll() ;
    }

    @GetMapping("/deportes/{id}")
    public Optional<Deportes> getDeportesById(@PathVariable Integer id) {
        return deportesService.findById(id) ;
    }

    @GetMapping("/deportes/tipo/{tipo}")
    public List<Deportes> getDeportesByTipo(@PathVariable String tipo)  {
        return deportesService.findByTipoDeporte(tipo) ;
    }
    
    @GetMapping("/mayores")
    public List<Deportes> getMayores() {
        return deportesService.findByMayores() ;
    }

    @PostMapping("/deportes")
    public void crearDeportes(@RequestBody Deportes deportes) {     
        deportesService.save(deportes); 
    }


    @GetMapping("/especial")
    public List<Deportes> getEspecial() {
        return deportesService.findByEspecial();
    }

    @GetMapping("/deportes/like")
    public List<Deportes> encontrarPorLetraDelNombre(@RequestParam String letra) {
        return deportesService.encontrarPorLetraDelNombre(letra);
    }
    
    
    
}
