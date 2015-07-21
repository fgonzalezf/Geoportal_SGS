package com.esri.gpt.contador;
import java.io.BufferedReader; 
import java.io.FileReader; 
import java.io.FileWriter;

public class ContadorVisitas {
	 private int nro; 
     
	    public int leerArchivo(String Archivo){ 
	        try{ 
	             
	            FileReader fr=new FileReader(Archivo); 
	            BufferedReader br= new BufferedReader(fr); 
	            String linea=br.readLine();//leo linea 
	            nro=Integer.parseInt(linea.trim());//paso string a int para retornar variable 
	            br.close(); 
	            fr.close(); 
	        }catch(Exception ex){ 
	            ex.printStackTrace(); 
	        } 
	        return nro; 
	    } 
	     
	    public void escribirArchivo(String visita, String Archivo){ 
	        try{ 
	            FileWriter fw=new FileWriter(Archivo); 
	            fw.write(visita); 
	            fw.close(); 
	        }catch(Exception ex){ 
	            ex.printStackTrace(); 
	        } 
	    } 

}
