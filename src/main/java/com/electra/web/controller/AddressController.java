package com.electra.web.controller;

import com.electra.web.model.Address;
import com.electra.web.service.AddressService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/address")
public class AddressController extends HttpServlet {
    private final AddressService addressService = new AddressService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // list of Addresses for demonstration purposes
        List<Address> addresses;
        try {
            System.out.println("Inside / Address");
            addresses = addressService.retrieveAddress();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        // Set the list of Addresses as a request attribute
        request.setAttribute("AddressList", addresses);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/DisplayAddresses.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postal_code");

        Address address = new Address();
        address.setId((long) Integer.parseInt(id));
        address.setStreet(street);
        address.setCity(city);
        address.setState(state);
        address.setCountry(country);
        address.setPostalCode((long) Integer.parseInt(postalCode));


        try {
            boolean isInserted = addressService.insertAddress(address);
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            if (isInserted) {
                out.println("<h1> Address object inserted to db</h1>");
            } else {
                out.println("<h1> Address object in NOT inserted to db</h1>");
            }
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
