
package Controlador;
import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    String listar="Listar.jsp";
    String add="add.jsp";
    String edit= "Editar.jsp";
    Persona p= new Persona();
    PersonaDAO dao=new PersonaDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        //para listar en el controlador
        if (action.equalsIgnoreCase("listar")) {
            acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
            acceso="add";
        }else if(action.equalsIgnoreCase("Agregar")){
            String dni=request.getParameter("txtDni");
            String nom=request.getParameter("txtNombres");
           p.setDni(dni);
           p.getNombres();
            dao.add(p);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            //capturamos el id y lo enviamos al formulario
            request.setAttribute("idper", request.getParameter("id"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            int Id = Integer.parseInt(request.getParameter("txtid"));
            String dni=request.getParameter("txtDni");
            String nom=request.getParameter("txtNombres");
            p.getId();
            p.setDni(dni);
           p.getNombres();
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
