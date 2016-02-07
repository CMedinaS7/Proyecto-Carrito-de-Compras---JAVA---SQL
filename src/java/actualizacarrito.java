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
import Dao.*;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="actualizacarrito", urlPatterns={"/actualizacarrito"})
public class actualizacarrito extends HttpServlet {
   
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


        modificar modify=new modificar();
        borrar elimina=new borrar();

        String producto=request.getParameter("codigo");
        int stock=Integer.parseInt(request.getParameter("stock"));
        String cantidad=request.getParameter("txtcantidad");


        String actualizar = request.getParameter("actualizar");
        String quitar = request.getParameter("btnquitar");


        System.out.print(producto);
        System.out.print(stock);
        System.out.print(cantidad);

        if(quitar !=null){
        if(producto!=null){
        System.out.print("asdasdasdasdjasjkddddddhjashdjkahskdhajskdhjkashdjkahsddsdd-------------------------");
            boolean resultado=elimina.quitarProducto(producto);
        if (resultado){response.sendRedirect("carrito.jsp?resp=10");}
        else{response.sendRedirect("carrito.jsp?resp=11");}
        }else{response.sendRedirect("carrito.jsp?msg=nulo");}
        }
        
        if (Integer.parseInt(cantidad) < stock){
        if(producto!=null){
        boolean resultado=modify.modificaCantidad(producto, cantidad);
        if (resultado){response.sendRedirect("carrito.jsp?msg=1");}
        else{response.sendRedirect("carrito.jsp?msg=2");}
        }else{response.sendRedirect("carrito.jsp?msg=nulo");}
        }else{
        response.sendRedirect("carrito.jsp?msg=7");
        }

        

        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet actualizacarrito</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet actualizacarrito at " + request.getContextPath () + "</h1>");
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
