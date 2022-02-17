package co.edu.unbosque.Infinitic_Frontend;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class DetalleVentaJSON {
	
	private static URL url;
	private static String sitio="http://localhost:8084/";
	
	public static int postJSON(Detalle_Venta detalle_venta) throws IOException {
		url = new URL(sitio+"api/detalleventa/guardar");
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
		+ "\"codigo_venta\":\""+ String.valueOf(detalle_venta.getCodigo_venta())
		+"\",\"codigo_producto\": \""+String.valueOf(detalle_venta.getCodigo_producto())
		+"\",\"cantidad_producto\": \""+String.valueOf(detalle_venta.getCantidad_producto())
		+"\",\"valor_total\":\""+String.valueOf(detalle_venta.getValor_total())
		+"\",\"valor_venta\":\""+String.valueOf(detalle_venta.getValor_venta())
		+"\",\"valor_iva\":\""+String.valueOf(detalle_venta.getValor_iva())
		+ "\"}";
		byte[] out = data.getBytes(StandardCharsets.UTF_8);
		OutputStream stream = http.getOutputStream();
		stream.write(out);
		int respuesta = http.getResponseCode();
		http.disconnect();
		return respuesta;
	}
}



