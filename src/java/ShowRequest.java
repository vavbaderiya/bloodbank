import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowRequest extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String a=request.getParameter("t1");
        String s=request.getParameter("t2");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String qr="select * from donar where address=? and bgroup=?";
        try{
            Connection con=mypkg.Data.connect();
            PreparedStatement ps=con.prepareStatement(qr);
            ps.setString(1, a);
            ps.setString(2, s);
           
            ResultSet rs=ps.executeQuery();
           
            while(rs.next()){
            out.println("<html>");
            out.println("<body>");
            out.println("<h3>Request-Details</h3>");
            out.println("<hr>");
            String s1=rs.getString(1);//userid
            String s3=rs.getString(3);//name
            String s4=rs.getString(4);//adress
            int s5=Integer.parseInt(rs.getString(5));//mobile
            String s6=rs.getString(6);//email
            String s7=rs.getString(7);//bloodgroup
            
            out.println("<table width=500 border=2 cellspacing=0 cellpadding=15 bordercolor=white>");
            out.println("<tr>");
            out.println("<td>User-id</td>");
            out.println("<td>"+s1+"</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Name</td>");
            out.println("<td>"+s3+"</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Location</td>");
            out.println("<td>"+s4+"</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Contact Number</td>");
            out.println("<td>"+s5+"</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Email</td>");
            out.println("<td>"+s6+"</td>");
            out.println("</tr>");
            out.println("<tr>");
            out.println("<td>Blood-Group</td>");
            out.println("<td>"+s7+"</td>");
            out.println("</tr>");
            out.println("</table>");
            out.println("<hr>");
            

           }
            
            out.println("<a href=adminpage.jsp>Admin-Home</a><br>");
            out.println("</body>");
            out.println("</html>");
            
        }catch(Exception ex){
            out.println(ex);
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