package com.interestcal;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddLoanServlet")
public class AddLoanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve loan data from the form
        String nameToPay = request.getParameter("nameToPay");
        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        double interestRate = Double.parseDouble(request.getParameter("interestRate"));
        String loanDate = request.getParameter("loanDate");

        // Perform loan calculation (e.g., calculate total amount with interest)
        double totalAmountToPay = calculateTotalAmount(loanAmount, interestRate);

        // Save the loan data to the database (you need to implement this part)
        // For example, using JDBC to interact with your MySQL database

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
}
