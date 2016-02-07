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
import Beans.personal;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="moduloPersonal", urlPatterns={"/moduloPersonal"})
public class moduloPersonal extends HttpServlet {
   
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

        String perfil=request.getParameter("perfil");


        String codigo=request.getParameter("txtcodigo");
        String apellidos=request.getParameter("txtapellidos");
        String nombres=request.getParameter("txtnombres");
        String dni=request.getParameter("txtdni");
        String telefono=request.getParameter("txttelefono");
        String direccion=request.getParameter("txtdireccion");
        String email=request.getParameter("txtemail");
        String cargo=request.getParameter("cbocargo");
        String filtro=request.getParameter("txtcod");
        //Capturo los nombres de los botones en variables
        String busca=request.getParameter("buscar");
        String modifica=request.getParameter("modificar");
        String modifica1=request.getParameter("modificar1");
        String grabar=request.getParameter("grabar");
        String eliminar=request.getParameter("eliminar");

        //cambuiar clave
        String cod=request.getParameter("cod");
        String clave=request.getParameter("txtclave");
        String clave1=request.getParameter("txtclavenueva");
        String cambiar=request.getParameter("cambiar");

        

        //Imprimo las variables en entorno NetBeans
        System.out.println(codigo);
        System.out.println(apellidos);
        System.out.println(nombres);
        System.out.println(dni);
        System.out.println(telefono);
        System.out.println(direccion);
        System.out.println(email);
        System.out.println(cargo);

        //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(apellidos!=null && nombres!=null && dni!=null ){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=insert.insertpersonal(nombres, apellidos, dni, telefono, direccion, email, cargo);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("Intranet/Personal.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("Intranet/Personal.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("Intranet/Personal.jsp?msg=nulo");}
        }

        //Realizo el procedimiento para desactivar el personal
        if (eliminar != null){
        if(codigo!=null ){
            boolean resultado1=elimina.eliminarPersonal(codigo);
        if (resultado1){response.sendRedirect("Intranet/Personal.jsp?resp=5");}
        else{response.sendRedirect("Intranet/Personal.jsp?resp=6");}
        }
        }

        //Realizo el procedimiento para modificar el personal
       if (modifica != null) {
       if (codigo != null && apellidos != null) {
           if(nombres!=null && dni!=null && telefono!=null ){
            boolean resultado=modify.modificaPersonal(codigo, apellidos, nombres, dni, telefono, direccion, cargo, email);
        if (resultado){response.sendRedirect("Intranet/Personal.jsp?resp=1");}
        else{response.sendRedirect("Intranet/Personal.jsp?resp=2");}
        }else{response.sendRedirect("Intranet/Personal.jsp?msg=nulo");}

       }
       }


       if (cambiar != null) {
       if (cod != null && clave != null) {
           if(clave1!=null ){
            boolean resultado=modify.cambiarClave(cod, clave, clave1);
        if (resultado){response.sendRedirect("Intranet/Perfil.jsp?resp=5");}
        else{response.sendRedirect("Intranet/Perfil.jsp?resp=6");}
        }else{response.sendRedirect("Intranet/Perfil.jsp?msg=nulo");}

       }
       }

               if (modifica1 != null) {
       if (codigo != null && apellidos != null) {
           if(nombres!=null && dni!=null && telefono!=null ){
            boolean resultado=modify.modificaPersonal(codigo, apellidos, nombres, dni, telefono, direccion, cargo, email);
        if (resultado){response.sendRedirect("Intranet/Perfil.jsp?resp=1");}
        else{response.sendRedirect("Intranet/Perfil.jsp?resp=2");}
        }else{response.sendRedirect("Intranet/Perfil.jsp?msg=nulo");}

       }
       }


        //Realizo el procedimiento para buscar al personal
         if (busca != null) {
            personal per = null;
            busquedas buscador = new busquedas();
            per = buscador.buscaPersonal(filtro);
            try{
            if (per.getCodigo() != null) {
                response.sendRedirect("Intranet/Personal.jsp?resp=3&codigo=" + per.getCodigo() + "&apellidos=" + per.getApellidos() + "&nombres=" + per.getNombres() + "&dni=" + per.getDni() +  "&telefono=" + per.getTelefono() + "&direccion=" + per.getDireccion() + "&cargo=" + per.getIdcargo() + "&email=" + per.getEmail()+ "&u=" + per.getUsuario());
            }
            else
            {
                response.sendRedirect("Intranet/Personal.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Personal.jsp?resp=4");
             }
            }

          if (perfil != null) {
            personal per = null;
            busquedas buscador = new busquedas();
            per = buscador.buscaPersonal(perfil);
            try{
            if (per.getCodigo() != null) {
                response.sendRedirect("Intranet/Perfil.jsp?resp=3&codigo=" + per.getCodigo() + "&apellidos=" + per.getApellidos() + "&nombres=" + per.getNombres() + "&dni=" + per.getDni() +  "&telefono=" + per.getTelefono() + "&direccion=" + per.getDireccion() + "&cargo=" + per.getIdcargo() + "&email=" + per.getEmail());
            }
            else
            {
                response.sendRedirect("Intranet/Perfil.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Perfil.jsp?resp=4");
             }
            }

        try {

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
