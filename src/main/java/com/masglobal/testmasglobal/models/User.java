package com.masglobal.testmasglobal.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User{

 	private Integer id;
    private String usuario;
    private String clave;
    private Integer estado;
    private String nombre;
    
}
