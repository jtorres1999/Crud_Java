
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
       
            <h1>Personas</h1>
            <a class="btn btn-success " href="Controlador?accion=add">Añadir</a>
            <br>
           
            <table  class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">Nombres</th>
                        <th class="text-center">ACCIONES</th>
                        
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
                        <td class="text-center"><%= per.getId()%></td>
                        <td class="text-center"><%= per.getDni()%></td>
                        <td class="text-center"><%= per.getNombres()%></td>
                        <td>
                            //Agregar a los botones su accion
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>      
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= per.getId()%>>Remover</a>  
                        </td>
                       
                    </tr>
                    <%%>
                </tbody>
            </table>
        </div>
    </body>
</html>
