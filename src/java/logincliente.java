/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.busquedas;
import javax.servlet.http.HttpSession;
import Beans.cliente;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="logincliente", urlPatterns={"/logincliente"})
public class logincliente extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String usuario=request.getParameter("txtcliente");
        String clave=request.getParameter("txtclave");
        String tipo=request.getParameter("combo");

        System.out.println(usuario);
        System.out.println(clave);
        System.out.println(tipo);

        cliente cli;
        busquedas buscando=new busquedas();

        if ("N".equals(tipo)){
        cli=buscando.LoginNatural(usuario, clave);
        if (cli!=null) {
            HttpSession sesion=request.getSession();
            sesion.setAttribute("codigocliente", cli.getCodigo());
            sesion.setAttribute("nombres", cli.getNombres());
            sesion.setAttribute("apellidos", cli.getApellidos());
            sesion.setAttribute("tele",cli.getTelefono());
            sesion.setAttribute("email",cli.getEmail());
            sesion.setAttribute("direccion",cli.getDireccion());
            sesion.setAttribute("dni",cli.getDni());
         if (cli!=null){
                response.sendRedirect("comprar3.jsp?msg=1&tipo="+tipo);
            }else{
            response.sendRedirect("comprar1.jsp?msg=2");
            }}else{ response.sendRedirect("comprar1.jsp?msg=2");}
        }

        if ("J".equals(tipo)){
            cli=buscando.LoginJuridico(usuario, clave);
        if (cli!=null) {
            HttpSession sesion=request.getSession();
            sesion.setAttribute("codigocliente", cli.getCodigo());
            sesion.setAttribute("ruc", cli.getRuc());
            sesion.setAttribute("rz", cli.getRz());
            sesion.setAttribute("rubro",cli.getRubro());
            sesion.setAttribute("email",cli.getEmail());
            sesion.setAttribute("dire",cli.getDireccion());
            sesion.setAttribute("telefono",cli.getTelefono());

         if (cli!=null){
                response.sendRedirect("comprar4.jsp?msg=1&tipo="+tipo);
            }else{
            response.sendRedirect("comprar1.jsp?msg=2");
            }
     }else{ response.sendRedirect("comprar1.jsp?msg=2");}}

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet logincliente</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet logincliente at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
