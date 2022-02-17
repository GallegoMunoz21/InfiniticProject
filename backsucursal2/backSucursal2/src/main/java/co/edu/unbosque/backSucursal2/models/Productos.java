package co.edu.unbosque.backSucursal2.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection = "productos")
public class Productos {
	@Id
	private String _id;
	
	private String codigo_producto;
	private String nombre_producto;
	private String nit_proveedor;
	private Double precio_compra;
	private Double iva_compra;
	private Double precio_venta;
	

	public Productos(String _id, String codigo_producto, String nombre_producto, String nit_proveedor,
			Double precio_compra, Double iva_compra, Double precio_venta) {
		
		this._id = _id;
		this.codigo_producto = codigo_producto;
		this.nombre_producto = nombre_producto;
		this.nit_proveedor = nit_proveedor;
		this.precio_compra = precio_compra;
		this.iva_compra = iva_compra;
		this.precio_venta = precio_venta;
	}
	public Productos() {
		
	}
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(String codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	public String getNombre_producto() {
		return nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}
	public String getNit_proveedor() {
		return nit_proveedor;
	}
	public void setNit_proveedor(String nit_proveedor) {
		this.nit_proveedor = nit_proveedor;
	}
	public Double getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(Double precio_compra) {
		this.precio_compra = precio_compra;
	}
	public Double getIva_compra() {
		return iva_compra;
	}
	public void setIva_compra(Double iva_compra) {
		this.iva_compra = iva_compra;
	}
	public Double getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(Double precio_venta) {
		this.precio_venta = precio_venta;
	}
	
}
