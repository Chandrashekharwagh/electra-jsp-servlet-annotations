package com.electra.web.controller;



import com.electra.web.model.Product;
import com.electra.web.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/product")
public class ProductController extends HttpServlet {
    private static final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // list of Products for demonstration purposes
        List<Product> product;
        System.out.println("Inside / Products");
        product = productService.retrieveProducts();
        // Set the list of Products as a request attribute
        request.setAttribute("ProductList", product);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/DisplayProducts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String brand = request.getParameter("brand_id");

        Product product = new Product();
        product.setId((long) Integer.parseInt(id));
        product.setName(name);
        product.setDescription(description);
        product.setPrice(Double.valueOf(price));
        product.setBrand((long) Integer.parseInt(brand));

        try {
            boolean isInserted = productService.insertProducts(product);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            if (isInserted) {
                out.println("<h1> Product object inserted to db</h1>");
            } else {
                out.println("<h1> Product object in NOT inserted to db</h1>");
            }
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
