package co.edu.unbosque.Infinitic_Frontend;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import co.edu.unbosque.Infinitic_Frontend.Proveedores;

public class ProveedoresJSON {
	private static URL url;
	private static String sitio="http://localhost/8083/";
	
	public static ArrayList<Proveedores> parsingProveedores(String json) throws ParseException {      
        JSONParser jsonParser = new JSONParser();
        ArrayList<Proveedores> lista = new ArrayList<Proveedores>();
        JSONArray proveedores = (JSONArray) jsonParser.parse(json);
        Iterator i = proveedores.iterator();
        
        while (i.hasNext()) {
        
            JSONObject innerObj = (JSONObject) i.next();
            
            Proveedores proveedor= new Proveedores();
            proveedor.set_id(innerObj.get("_id").toString());
            proveedor.setNombre_Proveedor(innerObj.get("nombre_proveedor").toString());
            proveedor.setCiudad_Proveedor(innerObj.get("ciudad_proveedor").toString());
            proveedor.setTelefono_Proveedor(innerObj.get("telefono_proveedor").toString());
            proveedor.setNitProveedor(innerObj.get("nit_proveedor").toString());
            proveedor.setDireccion_Proveedor(innerObj.get("direccion_proveedor").toString());
            lista.add(proveedor);
        }
        return lista;
	}
public static ArrayList<Proveedores> getJSON() throws IOException, ParseException{
    
		url = new URL(sitio +"api/proveedores/listar");
		HttpURLConnection http = (HttpURLConnection)url.openConnection();
    
		http.setRequestMethod("GET");
		http.setRequestProperty("Accept", "application/json");
		InputStream respuesta = http.getInputStream();
		byte[] inp = respuesta.readAllBytes();
		String json = "";
    
		for (int i = 0; i<inp.length ; i++) {
			json += (char)inp[i];
		}
    
		ArrayList<Proveedores> lista = new ArrayList<Proveedores>();
		lista = parsingProveedores(json);
		http.disconnect();
		return lista;
	}
	public static int postJSON(Proveedores proveedor) throws IOException {
		url = new URL(sitio+"api/proveedores/guardar");
		HttpURLConnection http;
		http = (HttpURLConnection)url.openConnection();
		
		try {
			http.setRequestMethod("POST");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");
		
		String data = "{"
		+ "\"nombre_proveedor\":\""+ proveedor.getNombre_Proveedor()
		+"\",\"ciudad_proveedor\": \""+proveedor.getCiudad_Proveedor()
		+"\",\"telefono_proveedor\":\""+String.valueOf(proveedor.getTelefono_Proveedor())
		+"\",\"nit_proveedor\":\""+String.valueOf(proveedor.getNitProveedor())
		+"\",\"direccion_proveedor\":\""+proveedor.getDireccion_Proveedor()
		+ "\"}";
		
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	public static int putJSON(Proveedores proveedor, String id) throws IOException {
		url = new URL(sitio+"api/proveedores/actualizar");
		HttpURLConnection http;
		http = (HttpURLConnection)url.openConnection();
		
		try {
			http.setRequestMethod("PUT");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");
		
		String data = "{"
		+ "\"_id\":\""+ id
		+"\",\"nombre_proveedor\": \""+proveedor.getNombre_Proveedor()
		+"\",\"ciudad_proveedor\":\""+proveedor.getCiudad_Proveedor()
		+"\",\"telefono_proveedor\":\""+proveedor.getTelefono_Proveedor()
		+"\",\"nit_proveedor\":\""+proveedor.getNitProveedor()
		+"\",\"direccion_proveedor\":\""+proveedor.getDireccion_Proveedor()
		+ "\"}";
		
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
	public static int deleteJSON(String id) throws IOException {
		url = new URL(sitio+"api/proveedores/eliminar/" + id);
		HttpURLConnection http;
		http = (HttpURLConnection)url.openConnection();
		
		try {
			http.setRequestMethod("DELETE");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		http.setDoOutput(true);
		http.setRequestProperty("Accept", "application/json");
		http.setRequestProperty("Content-Type", "application/json");
		
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
}
