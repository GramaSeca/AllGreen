/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.allgreensolutions.sistema.controller;

import com.allgreensolutions.sistema.dao.ItemDAO;
import com.allgreensolutions.sistema.dao.jpa.ItemDAOJPA;
import com.allgreensolutions.sistema.model.Item;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class ItemServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String logica = request.getPathInfo();
            System.out.println(logica);
            switch (logica) {
                case "/salvar":
                    this.salvar(request, response);
                    break;

                case "/incluir":
                    this.incluir(request, response);
                    break;

                case "/excluir":
                    this.excluir(request, response);
                    break;

                case "/alterar":
                    this.alterar(request, response);
                    break;

                case "/consulta":
                    this.consulta(request, response);
                    break;

                default:
                    out.println("Erro");
            }
        }
    }

    private void salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Item item = new Item();
        try {
            item.setCodigo(Integer.parseInt(request.getParameter("codigo")));
        } catch (NumberFormatException | NullPointerException ex) {
            System.out.println("Erro");
        }
        item.setNome((String) request.getParameter("itemNome"));
        item.setCodigoBarras((String) request.getParameter("itemCodigoBarras"));
        item.setValorUnitario(Double.parseDouble(request.getParameter("itemValorUnitario")));
        item.setUm((String) request.getParameter("itemUm"));
        item.setEstoqueMinimo(Integer.parseInt(request.getParameter("itemEstoqueMinimo")));

        ItemDAO dao = new ItemDAOJPA();
        dao.salvar(item);

        request.getRequestDispatcher("../Item/consulta").forward(request, response);
        this.destroy();
    }

    private void incluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.cadastro(request, response);
    }

    private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        System.out.println("CodigoExcluir>>" + codigo);
        ItemDAO dao = new ItemDAOJPA();
        dao.excluir(Item.class, codigo);

        request.getRequestDispatcher("../Item/consulta").forward(request, response);
        this.destroy();
    }

    private void alterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String codigo = request.getParameter("codigo");
        System.out.println("codigo>>" + codigo);

        if (codigo != null && !codigo.equals("")) {
            ItemDAO dao = new ItemDAOJPA();
            request.setAttribute("item", dao.buscarPorCodigo(Item.class, Integer.parseInt(codigo)));
        }

        this.cadastro(request, response);
    }

    private void consulta(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String strPagina = request.getParameter("pagina");
        int pagina = (strPagina == null || strPagina.equals("") ? 1 : Integer.parseInt(strPagina));

        if (pagina < 1) {
            pagina = 1;
        }

        ItemDAO dao = new ItemDAOJPA();
        List<Item> itens = dao.getAll(Item.class, (pagina - 1) * 20, 20);

        if (itens.isEmpty()) {
            pagina--;
            itens = dao.getAll(Item.class, (pagina - 1) * 20, 20);
        }

        request.setAttribute("itens", itens);
        request.setAttribute("pagina", pagina);

        request.getRequestDispatcher("/paginas/item/consulta.jsp").forward(request, response);
        this.destroy();
    }

    private void cadastro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/paginas/item/cadastro.jsp").forward(request, response);
        this.destroy();
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
