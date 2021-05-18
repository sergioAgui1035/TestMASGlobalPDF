package com.masglobal.testmasglobal.models.dto;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class login {
	private String info;
	private String	sesion;
	private String	cookie;
}

