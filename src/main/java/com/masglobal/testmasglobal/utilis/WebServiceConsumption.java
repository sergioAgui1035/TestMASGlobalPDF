package com.masglobal.testmasglobal.utilis;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.masglobal.testmasglobal.models.Employee;

public class WebServiceConsumption {

public static List<Employee> WebServiceConsumptionForEmployeesSynchronization() throws IOException{
		
		 URL obj = new URL("http://masglobaltestapi.azurewebsites.net/api/Employees");
	        HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-Type","application/json");
//	        conn.setRequestProperty("Authorization",usuario.getToken());
	        conn.setDoOutput(true);
	        conn.addRequestProperty("raw", "");
	        
	        int responseCode = conn.getResponseCode();   
	        List<Employee> listaEmployee = new ArrayList<>();
	        try{
	            if(responseCode != 200){

	                conn.disconnect();
	            }else{
	            	
	            	BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
		            Gson gson = new Gson();
		            Type type = new TypeToken<List<Employee>>(){}.getType();
		            listaEmployee = gson.fromJson(br.readLine(), type);		            
		            conn.disconnect();
	            }
	        }catch (Exception e) {
	            conn.disconnect();
	        }        
		
		return listaEmployee;
	}

}
