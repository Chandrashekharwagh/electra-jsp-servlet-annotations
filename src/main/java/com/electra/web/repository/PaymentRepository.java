package com.electra.web.repository;


import com.electra.web.model.Payment;
import com.electra.web.service.ConnectionService;

import java.sql.*;

public class PaymentRepository {
    private static Connection connection;
    private void initConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            connection = new ConnectionService().getConnection();
        }
    }

    public boolean insertPayment(Payment payment) throws SQLException {
        this.initConnection();

        String query = "INSERT INTO payment VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setLong(1, payment.getId());
            preparedStatement.setDouble(2, payment.getAmount());
            preparedStatement.setDate(3, Date.valueOf(payment.getPaymentDate()));
            preparedStatement.setLong(4, payment.getCustomerId());
            preparedStatement.setLong(5, payment.getOrderId());

            System.out.println("inserting payment object to payment table: " + payment);

            int rowsInserted = preparedStatement.executeUpdate();

            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

}
