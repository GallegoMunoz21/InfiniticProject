package co.edu.unbosque.backConsolidacionTienda.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection = "db_consolidacion")
public class Consolidacion {

	@Id
	private String _id;
	private String fecha_venta;
	private String ciudad_venta;
	private Double total_ventas;
	
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getFecha_venta() {
		return fecha_venta;
	}
	public void setFecha_venta(String fecha_venta) {
		this.fecha_venta = fecha_venta;
	}
	public String getCiudad_venta() {
		return ciudad_venta;
	}
	public void setCiudad_venta(String ciudad_venta) {
		this.ciudad_venta = ciudad_venta;
	}
	public Double getTotal_ventas() {
		return total_ventas;
	}
	public void setTotal_ventas(Double total_ventas) {
		this.total_ventas = total_ventas;
	}
	
	

	
	
	
	
}
