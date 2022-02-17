package co.edu.unbosque.Infinitic_Frontend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;


import co.edu.unbosque.Infinitic_Frontend.UsuarioJSON;
import co.edu.unbosque.Infinitic_Frontend.Usuarios;



@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public Servlet() {
		 super();
		 // TODO Auto-generated constructor stub
		 }

	
	protected void validarUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			
			String usua= request.getParameter("txtusuario");
			String pass=request.getParameter("txtpassword");
			System.out.println(usua);
			System.out.println(pass);
			int respuesta=0;
			ArrayList<Usuarios> lista = UsuarioJSON.getJSON();
			request.setAttribute("lista", lista);
			
			for(Usuarios usuarios:lista) {
				if(usuarios.getUsuario().equals(usua) && usuarios.getPassword().equals(pass)) {
					request.setAttribute("usuario", usuarios);
					request.getRequestDispatcher("/Principal.jsp").forward(request, response);
					respuesta=1;
			 }
			}
			if(respuesta==0) {
				request.getRequestDispatcher("/Login.jsp").forward(request, response);
				System.out.println("No se encontraron los datos");
					
			}
					
			
		} catch(Exception e){
	}
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String accion = request.getParameter("accion");
		
		if (accion.equals("Acceder")) {
			this.validarUsuarios(request, response);
		}
	}

}