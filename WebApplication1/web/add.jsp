

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1><center>Agregar Personas</center></h1>
            <form action="Controlador">
                ID:<br>
                <input type="text" name="txtDni"><br><br>
                Nombres: <br>
                  <input type="text" name="txtNom"><br>
                  <br>
                <input type="submit" name="accion" value="Agregar"><br>
            </form>
        </div>
    </body>
</html>
