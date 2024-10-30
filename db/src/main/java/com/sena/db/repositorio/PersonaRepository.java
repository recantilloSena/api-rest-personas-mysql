package com.sena.db.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sena.db.modelo.Persona;

public interface PersonaRepository extends JpaRepository <Persona, Integer>{

    @Query(value="SELECT p FROM Persona p where p.idDeporte.tipoDeporte= :tipo")
    List<Persona> listarDeportesTerrestres(@Param("tipo") String tipo);
    
}
