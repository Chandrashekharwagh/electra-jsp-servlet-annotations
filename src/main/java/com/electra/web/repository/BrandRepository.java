package com.electra.web.repository;


import com.electra.web.model.Brand;
import com.electra.web.service.ConnectionService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BrandRepository {
    private Connection connection;
    private void initConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            connection = new ConnectionService().getConnection();
        }
    }

    public boolean insertBrands(Brand brand) throws SQLException {
        this.initConnection();

        String query = "INSERT INTO brand VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setLong(1, brand.getId());
            preparedStatement.setString(2, brand.getName());
            preparedStatement.setString(3, brand.getDescription());

            System.out.println("inserting brand object to brand table: " + brand);

            int rowsInserted = preparedStatement.executeUpdate();

            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public List<Brand> retrieveBrands() {
        List<Brand> Brand = new ArrayList<>();
        // Use the connection to execute SQL queries and interact with the database
        try {
            this.initConnection();

            // Your database operations here...
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM brand");

            // Iterate over the result set
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");


                // Do something with the data, e.g., print it
                Brand brand = new Brand(id,name,description);
                Brand.add(brand);
            }
        } catch (SQLException e) {
            System.err.println("SQL error: " + e.getMessage());
        } finally {
            // Close the connection when done
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    System.err.println("Error closing connection: " + e.getMessage());
                }
            }
        }
        return Brand;
    }

}
