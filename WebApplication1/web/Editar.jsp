<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <% 
                PersonaDAO dao=new PersonaDAO();
                int id=Integer.parseInt((String)request.getAttribute("idper"));
                Persona p=(Persona)dao.list(id);
            %>
            <h1><center>Modificar Personas</center></h1>
            <form action="Controlador">
                DNI:<br>
                <input type="text" name="txtDni" value=" <%= p.getDni()  %>"><br><br>
                Nombres: <br>
                  <input type="text" name="txtNom" value="<%= p.getNombres()  %>"><br>
                  <input type="text" name="txtid" value="<%= p.getId()  %>">
                  <br>
                <input type="submit" name="accion" value="Actualizar"><br>
            </form>
        </div>
    </body>
</html>
