package com.electra.web.controller;


import com.electra.web.model.Customer;
import com.electra.web.service.CustomerService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/customer")
public class CustomerController extends HttpServlet {
    private final CustomerService customerService =new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("CustomerForm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Customer customer = new Customer();
        customer.setId((long) Integer.parseInt(id));
        customer.setName(name);
        customer.setEmail(email);



        try {
            boolean isInserted = customerService.insertCustomer(customer);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            if (isInserted) {
                out.println("<h1> Customer object inserted to db</h1>");
            } else {
                out.println("<h1> Customer object in NOT inserted to db</h1>");
            }
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("confirmation.jsp").forward(request, response);


    }
}
