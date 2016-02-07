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
import Beans.tarjeta;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="transaccion", urlPatterns={"/transaccion"})
public class transaccion extends HttpServlet {
   
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
        String cliente=request.getParameter("txtcliente");
        String tarjeta=request.getParameter("txttarjeta");
        String clave=request.getParameter("txtclave");
        String tipo=request.getParameter("txttipo");
        int num=Integer.parseInt(request.getParameter("num"));


        System.out.println(cliente);
        System.out.println(tarjeta);
        System.out.println(clave);

         tarjeta tar;
        busquedas buscando=new busquedas();

           tar=buscando.logeotarjeta(cliente, tarjeta, clave,num);
        if (tar!=null) {
                response.sendRedirect("comprar6.jsp?monto="+tar.getMonto()+"&tipo="+tipo+"&num="+num);
            }else{
            response.sendRedirect("comprar5.jsp?msg=2");
            }


        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet transaccion</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet transaccion at " + request.getContextPath () + "</h1>");
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
