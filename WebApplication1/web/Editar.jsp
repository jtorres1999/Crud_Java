<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-7">
            
                 <% 
                PersonaDAO dao=new PersonaDAO();
                int id=Integer.parseInt((String)request.getAttribute("idper"));
                Persona p=(Persona)dao.list(id);
            %>
            <h1><center>Modificar Personas</center></h1>
            <form action="Controlador">
                DNI:<br>
                <input class="form-control" type="text" name="txtDni" value=" <%= p.getDni()  %>"><br><br>
                Nombres: <br>
                 <input class="form-control" type="text" name="txtNom" value="<%= p.getNombres()  %>"><br>
                  
                 <input type="hidden" name="txtid" value="<%= p.getId()  %>">
                  <br>
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
                <a href="Controlador?accion=listar">Regresar </a>
            </form>
            </div>
        </div>
    </body>
</html>
