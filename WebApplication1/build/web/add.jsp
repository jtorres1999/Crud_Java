

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-7">
                 <h1><center>Agregar Personas</center></h1>
            <form action="Controlador">
                ID:<br>
                <input  class="form-control" type="text" name="txtDni"><br><br>
                Nombres: <br>
                  <input class="form-control" type="text" name="txtNom"><br>
                  <br>
                <input class="btn btn-primary " type="submit" name="accion" value="Agregar"><br>
            </form>
            </div>
        </div>
    </body>
</html>
