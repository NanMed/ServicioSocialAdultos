<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="content-type" content="text/html" charset="UTF-8">      

        <link href="https://fonts.googleapis.com/css?family=Raleway:300,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">    
        <link rel="stylesheet" href="css/all.css">        
        <link href="css/formulario.css" rel="stylesheet">

        <title>Nuevo diseño</title>        
    </head>
    <style>
        #pestana, #name, #cuenta, #nombre{
            display: none;
        }
        
    </style>
    <body>

        <!--<form action ="./Session" method= "post">
            <input type="text" id="cuenta" name="cuenta" class="input" value="${requestScope.response2}"> 
            <input type="text" id="pestana" name="pestana" class="input" value="${requestScope.response3}"> 
            <input type="text" id="name" name="name" class="input" value="${requestScope.response}"> 

            <input class="proyecto_buton fas fa-arrow-circle-left" type="submit"  value="Atrás" id="boton_pro">
        </form>-->  

        <h4 class="text-center mt-2 font-weight-bold">Nuevo usuario</h4>

        <form action="./RegistroUsuario" method="post" class="mt-5">
            <div id="registro" class="row justify-content-center mx-0">
                <div class="section d-flex flex-column">
                    <input type="text" id="id" name="id" class="input" required>            
                    <span class="user_label">ID</span>
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="nombres" name="nombres" class="input" required>            
                    <span class="user_label">Nombre</span>
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="uso" name="correo" class="input" required>            
                    <span class="user_label">Correo</span>  
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="uso" name="telefono" class="input" required>            
                    <span class="user_label">Teléfono</span>  
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="fecha" name="genero" class="input" required>            
                    <span class="user_label">Género</span>
                </div>

                <div class="section d-flex flex-column">
                    <input type="date" id="fechaVenta" name="cumple" class="input" required>            
                    <span class="user_label">Fecha de cumpleaños</span>
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="Pproveedor" name="usuario" class="input" required>            
                    <span class="user_label">Usuario</span>
                </div>

                <div class="section d-flex flex-column">
                    <input type="text" id="cliente" name="contrasenia" class="input" required>            
                    <span class="user_label">Contraseña</span> 
                </div>
            </div>
           
            <input type="text" id="cuenta" name="cuenta" class="input" value="${requestScope.response2}"> 
            <input type="text" id="pestana" name="pestana" class="input" value="${requestScope.response3}"> 
            <input type="text" id="nombre" name="nombre" class="input" value="${requestScope.response}"> 
                   
            <input class="login_button" type="submit"  value="GUARDAR">                       
        
        </form>
        
    </body>
</html>
