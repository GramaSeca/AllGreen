package com.allgreensolutions.sistema.controller;

import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA;
import com.allgreensolutions.sistema.model.Item;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ItemServlet", urlPatterns = {"/salvarDados"})
public class ItemServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String nome = request.getParameter("nome");

//        String fName = request.getParameter("firstName");
//        String mName = request.getParameter("middleName");
//        String lName = request.getParameter("lastName");
//        String email = request.getParameter("email");
//        String userId = request.getParameter("userId");
//        String password = request.getParameter("password");
        Item item = new Item();
        item.setNome(nome);
        
//        User user = new User(fName,mName,lName, email,userId, password);
        try {

//            ItemService registerService = new ItemService();
            ItemDAO dao = new ItemDAOJPA();
            dao.save(item);

            // RequestDispatcher determina o próximo caminho a seguir >>> miguééé, retirar depois
            response.sendRedirect("http://localhost:8084/AllGreen/paginas/item/itemConsulta.jsp");
            
            
//            // RequestDispatcher determina o próximo caminho a seguir
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginas/item/itemConsulta.jsp");
//
//            try {
//                requestDispatcher.forward(request, response);
//            } catch (ServletException | IOException ex) {
//                System.out.println("Erro: " + ex.getMessage());
//            }
            
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Registro Salvo</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<center>");
//            out.println("<h1>Salvo!</h1>");
//            out.println("</center>");
//            out.println("</body>");
//            out.println("</html>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
