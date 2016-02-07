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
import Beans.cliente;
/**
 *
 * @author Carlos Medina
 */
@WebServlet(name="moduloCliente", urlPatterns={"/moduloCliente"})
public class moduloCliente extends HttpServlet {
   
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
        String apellidos=request.getParameter("txtapellidos");
        String nombres=request.getParameter("txtnombres");
        String dni=request.getParameter("txtdni");
        String telefono=request.getParameter("txttelefono");
        String direccion=request.getParameter("txtdireccion");
        String email=request.getParameter("txtemail");
        String usuario=request.getParameter("txtusuario");
        String clave=request.getParameter("txtclave");
        String filtro=request.getParameter("txtcod");
        String rz=request.getParameter("txtrz");
        String rubro=request.getParameter("txtrubro");
        String ruc=request.getParameter("txtruc");
        String fecha=request.getParameter("txtfecha");
        String sexo=request.getParameter("txtsexo");

        String state=request.getParameter("state");

        String codni=request.getParameter("txtcoddni");
        String codruc=request.getParameter("txtcodruc");

  
         //Capturo los nombres de los botones en variables
        String busca=request.getParameter("buscar");
        String buscadni=request.getParameter("buscardni");
        String buscaruc=request.getParameter("buscarruc");
        String modifican=request.getParameter("modificarn");
        String modificaj=request.getParameter("modificarj");
        String grabar=request.getParameter("grabar");
        String eliminar=request.getParameter("eliminar");
        String registrar=request.getParameter("registrar");
        String natural=request.getParameter("natural");
        String juridico=request.getParameter("juridico");
        String natural1=request.getParameter("natural1");
        String juridico1=request.getParameter("juridico1");
        String buscarape=request.getParameter("buscarape");
        String buscarrz=request.getParameter("buscarrz");



        //activar cliente

        String codactivar=request.getParameter("txtactivar");
        String activar=request.getParameter("activar");

        //Imprimo las variables en entorno NetBeans
        System.out.println(codigo);
        System.out.println(apellidos);
        System.out.println(nombres);
        System.out.println(telefono);
        System.out.println(direccion);
        System.out.println(email);
        System.out.println(usuario);
        System.out.println(clave);
        System.out.println(ruc);
        System.out.println(codactivar);



        //Realizo el procedimiento para grabar en la BD
        if (natural != null) {//Pregunto si ha presionado el boton grabar
         if(apellidos!=null && nombres!=null && dni!=null ){//Verifico que los campos obligatorios se hayan llenado
             rz="";
             rubro="";
             ruc="";
        boolean resultado=insert.insertclienteNatural(fecha, direccion, email, telefono, ruc, rz, rubro, apellidos, nombres, dni, sexo, usuario, clave);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("Intranet/Cliente.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("Intranet/Cliente.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("Intranet/Cliente.jsp?msg=nulo");}
        }
    if (natural1 != null) {//Pregunto si ha presionado el boton grabar
         if(apellidos!=null && nombres!=null && dni!=null ){//Verifico que los campos obligatorios se hayan llenado
             rz="";
             rubro="";
             ruc="";
        boolean resultado=insert.insertclienteNatural(fecha, direccion, email, telefono, ruc, rz, rubro, apellidos, nombres, dni, sexo, usuario, clave);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("registro.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("registro.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("registro.jsp?msg=nulo");}
        }
        if (juridico != null) {//Pregunto si ha presionado el boton grabar
         if(rz!=null && rubro!=null && ruc!=null ){//Verifico que los campos obligatorios se hayan llenado
             apellidos="";
             nombres="";
             dni="";
             sexo="";
        boolean resultado=insert.insertclienteNatural(fecha, direccion, email, telefono, ruc, rz, rubro, apellidos, nombres, dni, sexo, usuario, clave);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("Intranet/Cliente.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("Intranet/Cliente.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("Intranet/Cliente.jsp?msg=nulo");}
        }

        if (juridico1 != null) {//Pregunto si ha presionado el boton grabar
         if(rz!=null && rubro!=null && ruc!=null ){//Verifico que los campos obligatorios se hayan llenado
             apellidos="";
             nombres="";
             dni="";
             sexo="";
        boolean resultado=insert.insertclienteNatural(fecha, direccion, email, telefono, ruc, rz, rubro, apellidos, nombres, dni, sexo, usuario, clave);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("registro.jsp?msg=ok");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("registro.jsp?msg=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("registro.jsp?msg=nulo");}
        }
        
     
        //Realizo el procedimiento para desactivar el personal
        if (eliminar != null){
        if(codigo!=null ){
            boolean resultado1=elimina.eliminarCliente(codigo);
        if (resultado1){response.sendRedirect("Intranet/Cliente.jsp?resp=5");}
        else{response.sendRedirect("Intranet/Cliente.jsp?resp=6");}
        }
        }

        //Realizo el procedimiento para modificar el personal
        if (modificaj != null) {
       if (codigo != null && rz != null) {
           if(rubro!=null && ruc!=null && telefono!=null ){
            boolean resultado=modify.modificaClienteJuridico(codigo, direccion, email, telefono, ruc, rz, rubro, usuario, clave);
        if (resultado){response.sendRedirect("Intranet/Cliente.jsp?resp=1");}
        else{response.sendRedirect("Intranet/Cliente.jsp?resp=2");}
        }else{response.sendRedirect("Intranet/Cliente.jsp?msg=nulo");}

       }
       }


        if (modifican != null) {
       if (codigo != null && apellidos != null) {
           if(nombres!=null && dni!=null && telefono!=null ){
            boolean resultado=modify.modificaClienteNatural(codigo, direccion, email, telefono, dni, apellidos, nombres, sexo, usuario, clave);
        if (resultado){response.sendRedirect("Intranet/Cliente.jsp?resp=1");}
        else{response.sendRedirect("Intranet/Cliente.jsp?resp=2");}
        }else{response.sendRedirect("Intranet/Cliente.jsp?msg=nulo");}

       }
       }



       //Realizo el procedimiento para activar cliente
       if (codactivar != null) {
       if (codactivar != null) {
        boolean resultado=modify.activarCliente(codactivar);
        if (resultado){response.sendRedirect("Intranet/Cliente.jsp?resp=8");}
        else{response.sendRedirect("Intranet/Cliente.jsp?resp=9");}
       }
       }


        //Realizo el procedimiento para buscar al personal
        if (busca != null) {
        if(filtro.length() == 8){
            cliente cli = null;
            busquedas buscador = new busquedas();
            cli = buscador.buscaClienteNatural(filtro);

            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("Intranet/Cliente.jsp?resp=3&codigo=" + cli.getCodigo() + "&apellidos=" + cli.getApellidos() + "&nombres=" + cli.getNombres() + "&dni=" + cli.getDni() +  "&sexo=" + cli.getSexo() +  "&telefono=" + cli.getTelefono() + "&direccion=" + cli.getDireccion() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario()+ "&clave=" + cli.getClave());
            }
            else
            {
                response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }else{
             cliente cli = null;
            busquedas buscador = new busquedas();
            cli = buscador.buscaClienteJuridico(filtro);
            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("Intranet/Cliente.jsp?resp=3&codigo=" + cli.getCodigo() + "&rz=" + cli.getRz() + "&rubro=" + cli.getRubro() + "&ruc=" + cli.getRuc() +  "&telefono=" + cli.getTelefono() + "&direccion=" + cli.getDireccion() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario()+ "&clave=" + cli.getClave());
            }
            else
            {
                response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
               }}

         if (buscarape != null) {

            cliente cli = null;
            busquedas buscador = new busquedas();
            cli = buscador.buscaClienteApellidos(state);

            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("Intranet/Cliente.jsp?resp=3&codigo=" + cli.getCodigo() + "&apellidos=" + cli.getApellidos() + "&nombres=" + cli.getNombres() + "&dni=" + cli.getDni() +  "&sexo=" + cli.getSexo() +  "&telefono=" + cli.getTelefono() + "&direccion=" + cli.getDireccion() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario()+ "&clave=" + cli.getClave());
            }
            else
            {
                response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }

//        if (busca != null) {
//        if(filtro.length() == 11){
//            cliente cli = null;
//            busquedas buscador = new busquedas();
//            cli = buscador.buscaClienteJuridico(filtro);
//            try{
//            if (cli.getCodigo() != null) {
//                response.sendRedirect("Intranet/Cliente.jsp?resp=3&codigo=" + cli.getCodigo() + "&rz=" + cli.getRz() + "&rubro=" + cli.getRubro() + "&ruc=" + cli.getRuc() +  "&telefono=" + cli.getTelefono() + "&direccion=" + cli.getDireccion() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario()+ "&clave=" + cli.getClave());
//            }
//            else
//            {
//                response.sendRedirect("Intranet/Cliente.jsp?resp=4");
//             }
//            }catch(NullPointerException e){
//               response.sendRedirect("Intranet/Cliente.jsp?resp=4");
//             }
//            }}


        if (buscarrz != null) {
                  cliente cli = null;
            busquedas buscador = new busquedas();
            cli = buscador.buscaClienteRazon(state);
            try{
            if (cli.getCodigo() != null) {
                response.sendRedirect("Intranet/Cliente.jsp?resp=3&codigo=" + cli.getCodigo() + "&rz=" + cli.getRz() + "&rubro=" + cli.getRubro() + "&ruc=" + cli.getRuc() +  "&telefono=" + cli.getTelefono() + "&direccion=" + cli.getDireccion() + "&email=" + cli.getEmail()+ "&usuario=" + cli.getUsuario()+ "&clave=" + cli.getClave());
            }
            else
            {
                response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }catch(NullPointerException e){
               response.sendRedirect("Intranet/Cliente.jsp?resp=4");
             }
            }


        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet moduloCliente</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet moduloCliente at " + request.getContextPath () + "</h1>");
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
