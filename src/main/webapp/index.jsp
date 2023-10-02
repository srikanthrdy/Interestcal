<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Interest Calculator - Home</title>
    <!-- Add your CSS styles here -->
    <style>
        /* Define your CSS styles for the page */
        body {
            font-family: Arial, sans-serif;
        }
        .section {
            border: 1px solid #ccc;
            margin: 10px;
            padding: 10px;
        }
        .loan-entry {
            margin: 10px;
            padding: 10px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <h1>Welcome, [Username]!</h1>

    <div class="section">
        <h2>Loans to Pay</h2>
        <!-- Display loans to pay here -->
        <div class="loan-entry">
            <p>Name: John Doe</p>
            <p>Loan Amount: $1000</p>
            <p>Interest Rate: 5%</p>
            <p>Loan Date: 2023-10-10</p>
            <p>Total Amount to Pay: $[Calculate total amount]</p>
        </div>
        <!-- Add option to add a new loan -->
        <form action="AddLoanServlet" method="post">
            <h3>Add New Loan to Pay</h3>
            <label for="nameToPay">Name:</label>
            <input type="text" id="nameToPay" name="nameToPay" required><br>
            <label for="loanAmount">Loan Amount:</label>
            <input type="text" id="loanAmount" name="loanAmount" required><br>
            <label for="interestRate">Interest Rate:</label>
            <input type="text" id="interestRate" name="interestRate" required><br>
            <label for="loanDate">Loan Date:</label>
            <input type="date" id="loanDate" name="loanDate" required><br>
            <input type="submit" value="Add Loan">
        </form>
    </div>

    <div class="section">
        <h2>Loans to Receive</h2>
        <!-- Display loans to receive here -->
        <div class="loan-entry">
            <p>Name: Jane Smith</p>
            <p>Loan Amount: $800</p>
            <p>Interest Rate: 4%</p>
            <p>Loan Date: 2023-09-15</p>
            <p>Total Amount to Receive: $[Calculate total amount]</p>
        </div>
        <!-- Add option to add a new loan -->
        <form action="AddLoanServlet" method="post">
            <h3>Add New Loan to Receive</h3>
            <label for="nameToReceive">Name:</label>
            <input type="text" id="nameToReceive" name="nameToReceive" required><br>
            <label for="loanAmountToReceive">Loan Amount:</label>
            <input type="text" id="loanAmountToReceive" name="loanAmountToReceive" required><br>
            <label for="interestRateToReceive">Interest Rate:</label>
            <input type="text" id="interestRateToReceive" name="interestRateToReceive" required><br>
            <label for="loanDateToReceive">Loan Date:</label>
            <input type="date" id="loanDateToReceive" name="loanDateToReceive" required><br>
            <input type="submit" value="Add Loan">
        </form>
    </div>
</body>
</html>
