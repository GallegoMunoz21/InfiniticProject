
           
            const form = document.getElementById('form');
            const cedula = document.getElementById('cedula');
            const nombre = document.getElementById('nombre');
            const usuario = document.getElementById('usuario');
            const email = document.getElementById('email');
            const password = document.getElementById('password');
            const password2 = document.getElementById('password2');
            
            

 function setErrorFor(input, mensaje) {
                        const formControl = input.parentElement;
                        const small = formControl.querySelector('small');
                        formControl.className = 'form-control error';
                        small.innerText = mensaje;
                    }
                    
                  
        


form.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});

function checkInputs() {
	  // trim to remove the whitespaces
                    const cedulaValue = cedula.value.trim();
                    const nombreValue = nombre.value.trim();
                    const usuarioValue = usuario.value.trim();
                    const emailValue = email.value.trim();
                    const passwordValue = password.value.trim();
                    const password2Value = password2.value.trim();
    
                    
                    if(cedulaValue === '') {
                        setErrorFor(cedula, 'Campo requerido');
                      	
                    } else {
                        setSuccessFor(cedula);
                    }
                    
                    if(nombreValue === '') {
                        setErrorFor(nombre, 'Campo requerido');
						
                     
                      
                    } else {
                        setSuccessFor(nombre);
                    }
                    
                    if(usuarioValue === '') {
                        setErrorFor(usuario, 'Campo requerido');
					
                        
                    } else {
                        setSuccessFor(usuario);
                    }
                    
                    if(emailValue === '') {
                        setErrorFor(email, 'Campo requerido');
                       	
                    } else {
                        setSuccessFor(email);
                    }
                    
                        if(passwordValue === '') {
                        setErrorFor(password, 'Campo requerido');
                     	
                    } else {
                        setSuccessFor(password);
                    }
                    
                    if(password2Value === '') {
                        setErrorFor(password2, 'Campo requerido');
                 		
                    } else if(passwordValue !== password2Value) {
                        setErrorFor(password2, 'El password NO coincide');
                      
               
                    }
                    
                  }  
                 
           
           
                   
           
           
           
           
           
           

     

                  
            
        
            
            
          
        