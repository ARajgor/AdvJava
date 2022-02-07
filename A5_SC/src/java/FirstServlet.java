import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author ayush
 */
public class FirstServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* Get values from HTML form */
            int a = Integer.parseInt(request.getParameter("number1"));
            int b = Integer.parseInt(request.getParameter("number2"));
            String name = request.getParameter("name");
            int total = a+b;
            
            /* Create and set cookies */
            Cookie ck = new Cookie("name",name);
            response.addCookie(ck);
            
            /* Session create */
            HttpSession session = request.getSession();
            session.setAttribute("name", name);
            
            if( a<0 || b<0){
                out.print("Sorry you enter negative number!!!!!!<br><br>");
                /* Send upper msg to index.html file */
                RequestDispatcher rd=request.getRequestDispatcher("/index.html");  
                rd.include(request, response); 
            } else {
                out.println("a: "+a+"<br>");
                out.println("b: "+b+"<br>"  );
                out.println("Addition of two: "+total);
                
                /* send to SecondServlet using ReqeuestDispatcher*/
                request.setAttribute("total", total);
                request.getRequestDispatcher("/square").forward(request, response);
                
                
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
