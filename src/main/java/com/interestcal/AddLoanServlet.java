package com.interestcal;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddLoanServlet")
public class AddLoanServlet extends HttpServlet {
    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/loan";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Rajini@123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve loan data from the form
        String nameToPay = request.getParameter("nameToPay");
        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        double interestRate = Double.parseDouble(request.getParameter("interestRate"));
        String loanDate = request.getParameter("loanDate");

        // Perform loan calculation (e.g., calculate total amount with interest)
        double totalAmountToPay = calculateTotalAmount(loanAmount, interestRate);

        // Save the loan data to the database
        saveLoanToDatabase(nameToPay, loanAmount, interestRate, loanDate);

        // Redirect to the home page or a success page
        response.sendRedirect("index.jsp");
    }

    // Example loan calculation method (you can implement your own logic)
    private double calculateTotalAmount(double loanAmount, double interestRate) {
        // Implement your loan calculation logic here
        // For example, calculate total amount with interest
        double totalAmount = loanAmount * (1 + (interestRate / 100));
        return totalAmount;
    }

    // Save loan data to the MySQL database
    private void saveLoanToDatabase(String nameToPay, double loanAmount, double interestRate, String loanDate) {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the MySQL database
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Define the SQL INSERT statement
            String sql = "INSERT INTO loans (name, loan_amount, interest_rate, loan_date) VALUES (?, ?, ?, ?)";

            // Create a PreparedStatement to execute the SQL statement
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, nameToPay);
            preparedStatement.setDouble(2, loanAmount);
            preparedStatement.setDouble(3, interestRate);
            preparedStatement.setString(4, loanDate);

            // Execute the INSERT statement to save the loan data
            preparedStatement.executeUpdate();

            // Close the resources
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Handle any errors that may occur
            e.printStackTrace();
        }
    }
}
