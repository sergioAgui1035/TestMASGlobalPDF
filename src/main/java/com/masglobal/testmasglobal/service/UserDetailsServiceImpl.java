package com.masglobal.testmasglobal.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.masglobal.testmasglobal.models.*;
import com.masglobal.testmasglobal.repository.UserRepositorio;
import com.masglobal.testmasglobal.utilis.ClaveEncriptacion;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepositorio UserRepositorio;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String nombreUsuario = "";
		String PasswordIncriptadaSmarti = "";

		List<com.masglobal.testmasglobal.models.User> arrUsuario = UserRepositorio.findAll();

		for (int i = 0; i < arrUsuario.size(); i++) {
			if(arrUsuario.get(i).getUsuario().equals(username)) {
				nombreUsuario = arrUsuario.get(i).getUsuario();
				PasswordIncriptadaSmarti = arrUsuario.get(i).getClave();
			}
		}
		List grantList = new ArrayList();
		// ROLE_USER, ROLE_ADMIN,..
		GrantedAuthority grantedAuthority = new SimpleGrantedAuthority("ROLE_ADMIN");
		grantList.add(grantedAuthority);

		// Crear El objeto UserDetails que va a ir en sesion y retornarlo.
		String passWordSemaforos = "";
		try {
			String pass = ClaveEncriptacion.Desencriptar(PasswordIncriptadaSmarti);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			passWordSemaforos = passGenerator(ClaveEncriptacion.Desencriptar(PasswordIncriptadaSmarti));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(nombreUsuario == "" || passWordSemaforos == "") {
			nombreUsuario = "Admin";
			passWordSemaforos = passGenerator("Admin2021");;
			
		}
		UserDetails user = (UserDetails) new User(nombreUsuario,passWordSemaforos, grantList);
		return user;
	}

	public static String passGenerator(String args) {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(4);
		// El String que mandamos al metodo encode es el password que queremos
		// encriptar.
		return bCryptPasswordEncoder.encode(args);
	}
}