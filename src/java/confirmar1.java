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
import Dao.modificar;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="confirmar1", urlPatterns={"/confirmar1"})
public class confirmar1 extends HttpServlet {
   
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


        String confirmar=request.getParameter("confirmar");
        String pagar=request.getParameter("pagar");
        String cliente=request.getParameter("cliente");
        String tipo=request.getParameter("tipo");

        modificar modify=new modificar();

       if (confirmar != null) {
       if (cliente != null) {
           if(cliente != null && confirmar !=null){
            boolean resultado=modify.CinfirmarPedido(cliente);
        if (resultado){response.sendRedirect("detalle.jsp?codigo=W0015&resp=11");}
        else{response.sendRedirect("comprar3.jsp?resp=2");}
        }else{response.sendRedirect("comprar3.jsp?msg=nulo");}
       }
       }else{
            if (cliente != null) {
           if(cliente != null && pagar !=null){
            boolean resultado=modify.CinfirmarPedido(cliente);
        if (resultado){response.sendRedirect("comprar5.jsp?resp=1&tipo="+tipo);}
        else{response.sendRedirect("comprar3.jsp?resp=2");}
        }else{response.sendRedirect("comprar3.jsp?msg=nulo");}
       }
       }

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet confirmar1</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet confirmar1 at " + request.getContextPath () + "</h1>");
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
