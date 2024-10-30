package com.sena.db.modelo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "deportes")
@Data
@NoArgsConstructor
public class Deportes {
    
    @Id
    private Integer id;
    @Column(name = "nombre_deporte") 
    private String nombreDeporte;
    @Column(name = "tipo_deporte") 
    private String tipoDeporte;


}
