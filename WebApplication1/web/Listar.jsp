
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
            <h1>Personas</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>DNI</th>
                        <th>Nombres</th>
                        <th>ACCIONES</th>
                        
                    </tr>
                </thead>
                <%
                    PersonaDAO dao= new PersonaDAO();
                    List<Persona>list=dao.Listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                     //creamos un while para que el iterator corra
                            while (iter.hasNext()) {
                            per=iter.next();
                          
                
                        }
                   %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getDni()%></td>
                        <td><%= per.getNombres()%></td>
                        <td>
                            //Agregar a los botones su accion
                            <a href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>      
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>>Remover</a>  
                        </td>
                       
                    </tr>
                    <%%>
                </tbody>
            </table>
        </div>
    </body>
</html>
