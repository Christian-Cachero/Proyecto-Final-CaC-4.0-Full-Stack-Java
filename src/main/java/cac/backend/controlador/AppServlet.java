package cac.backend.controlador;

import cac.backend.modelo.Modelo;
import cac.backend.modelo.ModeloOrador;
import cac.backend.modelo.Orador;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "app", urlPatterns = "/ver_oradores")
public class AppServlet extends HttpServlet {
//todo: agregar un endpoint para comprar_ticket.jsp

    private Modelo modelo;
    private final String URI_LIST = "WEB-INF/comunes/oradores/ver_oradores.jsp";
    private final String URI_EDIT = "WEB-INF/comunes/oradores/editarOrador.jsp";
    private final String URI_REMOVE = "WEB-INF/comunes/oradores/borrarOrador.jsp";
   // private final String URI_COMPRAR = "WEB-INF/comunes/comprar_ticket.jsp";


    public void init() throws ServletException {
        this.modelo = new ModeloOrador();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Modelo m = new ModeloOrador();
        // con esto ya estamos asociando algo del servidor y utilizándolo en el JSP.
        String accion = req.getParameter("accion");
        //Evita nulos. XD
        accion = accion == null ? "" : accion;
        int id;
        switch (accion){
            //lógica para mostrar form de edición.
            //todo: modularizar el código repetido de id y setAttribute(?).
            case "actualizar":
                req.setAttribute("oradorAEditar", modelo.getOrador(getOradorId(req)));
                req.getRequestDispatcher(URI_EDIT).forward(req, resp);
                break;
            case "borrar":
//              id = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("oradorABorrar", modelo.getOrador(getOradorId(req)));
                req.getRequestDispatcher(URI_REMOVE).forward(req, resp);
                break;
            default:
                req.setAttribute("listaOradores", m.getOradores());
                req.getRequestDispatcher(URI_LIST).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // la lógica para guardar en la BD.

        /*Esto usarías si tuvieras el botón submit en la misma lista de oradores
        * cosa que aquí no pasa y el usuario simplemente necesita revisar el apartado específico por ahora.
        */
           //Muestra la lista de oradores actualizada después del editar.
        Orador ora;
        int id;
        String accion = req.getParameter("accion");
        accion = accion == null ? "" : accion;

        switch (accion){
            case "agregar":
                ora = getOradorSegunParams(req);
                modelo.addOrador(ora);
                //Redirige a la página principal.
                resp.sendRedirect(getServletContext().getContextPath());
                break;
            case "actualizar":
                ora = getOradorSegunParams(req);
                ora.setId(getOradorId(req));

                modelo.updateOrador(ora);
                resp.sendRedirect(getServletContext().getContextPath() + "/ver_oradores");
                break;
            case "borrar":
                modelo.removeOrador(getOradorId(req));
                resp.sendRedirect(getServletContext().getContextPath() + "/ver_oradores");
                break;
        }
    }

    private Orador getOradorSegunParams(HttpServletRequest req){
        Orador ora = new Orador();
        ora.setNombre(req.getParameter("nombre"));
        ora.setApellido(req.getParameter("apellido"));
        //System.out.println(ora);
        return ora;
    }

    private int getOradorId(HttpServletRequest req){
        int id = Integer.parseInt(req.getParameter("id"));
        return id;
    }

    // pendiente:
//    private void getRecogerDatos(String s, HttpServletRequest req){
//        req.setAttribute(s, modelo.getOrador(getOradorId(req)));
//    }
}
