package com.sena.db.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.sena.db.modelo.Deportes;
import com.sena.db.repositorio.DeportesRepository;

@Service
public class DeportesService {

    @Autowired
    DeportesRepository deportesRepository;

    public List<Deportes> findAll() {
        return deportesRepository.findAll();
    }

    public Optional<Deportes> findById(Integer id) {
       return deportesRepository.findById(id);
    }

    public List<Deportes> findByTipoDeporte(String tipo) {
        return deportesRepository.findByTipoDeporte(tipo);
    }

    public List<Deportes> findByMayores() {
        return deportesRepository.findByMayores();
    }

    public void save(Deportes deportes) {
         String tipo;
         tipo = deportes.getTipoDeporte();
         switch (tipo) {
            case "A"-> deportes.setTipoDeporte("Agua");
            case "T"-> deportes.setTipoDeporte("Terrestre");
            case "H"->deportes.setTipoDeporte("Hielo");
            case "C"->deportes.setTipoDeporte("Caballo");
            case "M"->deportes.setTipoDeporte("Montaña");
            case "O"-> deportes.setTipoDeporte("Otros");           
            default-> deportes.setTipoDeporte("N/A");
        };
        deportesRepository.save(deportes);
    }

    public List<Deportes> findByEspecial(){
        return deportesRepository.findByEspecial();
    };  


    public List<Deportes> encontrarPorLetraDelNombre(String letra){
        return deportesRepository.encontrarPorLetraDelNombre("%"+ letra+"%");
    }


    
}
