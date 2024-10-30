package com.sena.db.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sena.db.modelo.Deportes;

import java.util.List;


public interface DeportesRepository extends JpaRepository<Deportes,Integer>{
    
    List<Deportes> findByTipoDeporte(String tipoDeporte);

    @Query(value =  "Select d from Deportes d where d.id > 5")
    List<Deportes> findByMayores();


    @Query(value = "SELECT * FROM deportes where tipo_deporte='Terrestre' and id in (1,2,5,7,8,9,16)",
    nativeQuery=true) 
    List<Deportes> findByEspecial();     
    
    @Query(value = "SELECT * FROM deportes where nombre_deporte like :letra ",
    nativeQuery=true) 
    List<Deportes> encontrarPorLetraDelNombre(@Param("letra") String letra); 
    

    

}
