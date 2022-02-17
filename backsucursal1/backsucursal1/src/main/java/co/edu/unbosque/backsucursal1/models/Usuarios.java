package co.edu.unbosque.backsucursal1.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
@Document(collection="usuarios") 
public class Usuarios{

@Id
private String _id;

private String cedula_usuario;
private String nombre_usuario;
private String email_usuario;
private String usuario;
private String password;
public String get_id() {
	return _id;
}
public void set_id(String _id) {
	this._id = _id;
}
public String getCedula_usuario() {
	return cedula_usuario;
}
public void setCedula_usuario(String cedula_usuario) {
	this.cedula_usuario = cedula_usuario;
}
public String getNombre_usuario() {
	return nombre_usuario;
}
public void setNombre_usuario(String nombre_usuario) {
	this.nombre_usuario = nombre_usuario;
}
public String getEmail_usuario() {
	return email_usuario;
}
public void setEmail_usuario(String email_usuario) {
	this.email_usuario = email_usuario;
}
public String getUsuario() {
	return usuario;
}
public void setUsuario(String usuario) {
	this.usuario = usuario;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


}
