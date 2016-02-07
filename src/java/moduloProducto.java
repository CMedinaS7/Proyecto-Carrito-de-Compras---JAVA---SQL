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
import Beans.Producto;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="moduloProducto", urlPatterns={"/moduloProducto"})
public class moduloProducto extends HttpServlet {
   
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
         //Instancio los paquestes del DAO
        modificar modify=new modificar();
        insertar insert=new insertar();
        borrar elimina=new borrar();

        //Capturo el valor de las cajas de texto en variables
        String codigo=request.getParameter("txtcodigo");
        String nombre=request.getParameter("txtnombre");
        String color=request.getParameter("txtcolor");
        String marca=request.getParameter("cbomarca");
        String precio=request.getParameter("txtprecio");
        String descripcion=request.getParameter("txtdescripcion");
        String stock=request.getParameter("txtstock");
        String foto=request.getParameter("txtfoto");
        String foto1=request.getParameter("txtfoto1");
        String foto2=request.getParameter("txtfoto2");
        String filtro=request.getParameter("txtcod");
        String tag =request.getParameter("txttags");
        
        
        //Capturo los nombres de los botones en variables
        String busca=request.getParameter("buscar");
        String modifica=request.getParameter("modificar");
        String grabar=request.getParameter("grabar");
        String eliminar=request.getParameter("eliminar");
       
        //Imprimo las variables en entorno NetBeans
        System.out.println(codigo);
        System.out.println(nombre);
        System.out.println(color);
        System.out.println(marca);
        System.out.println(precio);
        System.out.println(descripcion);
        System.out.println(stock);
        System.out.println(foto);
        System.out.println(foto1);
        System.out.println(foto2);
        System.out.println(tag);

        
        //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(nombre!=null && stock!=null && marca!=null ){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=insert.insertproducto(nombre, marca, precio, color, descripcion, stock, foto, foto1, foto2, tag);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("Intranet/Producto.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("Intranet/Producto.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("Intranet/Producto.jsp?msg=nulo");}
        }
        
        //Realizo el procedimiento para desactivar el personal
        if (eliminar != null){
        if(codigo!=null ){
            boolean resultado1=elimina.eliminarProducto(codigo);
        if (resultado1){response.sendRedirect("Intranet/Producto.jsp?resp=5");}
        else{response.sendRedirect("Intranet/Producto.jsp?resp=6");}
        }
        }

        //Realizo el procedimiento para modificar el personal
       if (modifica != null) {
       if (codigo != null && nombre != null) {
           if(precio!=null && color!=null && stock!=null ){
            boolean resultado=modify.modificaProducto(codigo, nombre, marca, precio, color, descripcion, stock, foto,foto1,foto2,tag);
        if (resultado){response.sendRedirect("Intranet/Producto.jsp?resp=1");}
        else{response.sendRedirect("Intranet/Producto.jsp?resp=2");}
        }else{response.sendRedirect("Intranet/Producto.jsp?msg=nulo");}

       }
       }
       
        //Realizo el procedimiento para buscar al personal
         if (busca != null) {
            Producto pro = null;
            busquedas buscador = new busquedas();
            pro = buscador.buscaProducto(filtro);
            try{
            if (pro.getCodigo() != null) {
                response.sendRedirect("Intranet/Producto.jsp?resp=3&codigo=" + pro.getCodigo() + "&nombre=" + pro.getNombre() + "&marca=" + pro.getMarca() + "&precio=" + pro.getPrecio() +  "&color=" + pro.getColor() +  "&descripcion=" + pro.getDescripcion() + "&foto=" + pro.getFoto() + "&tags=" + pro.getTag() +  "&foto1=" + pro.getFoto1() + "&foto2=" + pro.getFoto2() + "&stock=" + pro.getStock());
            }
            else
            {
                response.sendRedirect("Intranet/Producto.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Producto.jsp?resp=4");
             }
            }
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet moduloProducto</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet moduloProducto at " + request.getContextPath () + "</h1>");
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
