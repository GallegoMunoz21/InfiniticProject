package co.edu.unbosque.backSucursal2.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "db_proveedores")

public class Proveedores {
	@Id
	private String _id;

	private String nitProveedor;
	private String ciudad_Proveedor;
	private String direccion_Proveedor;
	private String nombre_Proveedor;
	private String telefono_Proveedor;
	
	
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getNitProveedor() {
		return nitProveedor;
	}
	public void setNitProveedor(String nitProveedor) {
		this.nitProveedor = nitProveedor;
	}
	public String getCiudad_Proveedor() {
		return ciudad_Proveedor;
	}
	public void setCiudad_Proveedor(String ciudad_Proveedor) {
		this.ciudad_Proveedor = ciudad_Proveedor;
	}
	public String getDireccion_Proveedor() {
		return direccion_Proveedor;
	}
	public void setDireccion_Proveedor(String direccion_Proveedor) {
		this.direccion_Proveedor = direccion_Proveedor;
	}
	public String getNombre_Proveedor() {
		return nombre_Proveedor;
	}
	public void setNombre_Proveedor(String nombre_Proveedor) {
		this.nombre_Proveedor = nombre_Proveedor;
	}
	public String getTelefono_Proveedor() {
		return telefono_Proveedor;
	}
	public void setTelefono_Proveedor(String telefono_Proveedor) {
		this.telefono_Proveedor = telefono_Proveedor;
	}
	
	
}
