package co.edu.unbosque.backSucursal3.models;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="db_ventas")
public class Ventas {
	@Id
	private String _id;
	private Long codigo_venta;
	private String cedula_cliente;
	private String Cedula_usuario;
	private Double iva_venta;
	private Double total_venta;
	private Double valor_venta;
	private String fecha_venta;
	private String ciudad_venta;
	
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
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public Long getCodigo_venta() {
		return codigo_venta;
	}
	public void setCodigo_venta(Long codigo_venta) {
		this.codigo_venta = codigo_venta;
	}
	public String getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(String cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public String getCedula_usuario() {
		return Cedula_usuario;
	}
	public void setCedula_usuario(String cedula_usuario) {
		Cedula_usuario = cedula_usuario;
	}
	public Double getIva_venta() {
		return iva_venta;
	}
	public void setIva_venta(Double iva_venta) {
		this.iva_venta = iva_venta;
	}
	public Double getTotal_venta() {
		return total_venta;
	}
	public void setTotal_venta(Double total_venta) {
		this.total_venta = total_venta;
	}
	public Double getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(Double valor_venta) {
		this.valor_venta = valor_venta;
	}
	
	
}
