<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Interest Calculator - Home</title>
    <!-- Add your CSS styles here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            background-image: url('background.jpg'); /* Add your background image URL here */
            background-size: cover;
            background-repeat: no-repeat;
        }

        h2 {
            text-align: center;
            color: black;
        }

        h1 {
            text-align: center;
            color: white;
        }

        .header {
             text-align: right;
             padding: 10px;
             background-color: #007bff;
             color: white;
             margin-right: 10px;
             border-right: 1px solid #ccc; /* Add margin line */
             padding-right: 20px;
         }

         .footer {
             text-align: center;
             padding: 10px;
             background-color: #007bff;
             color: white;
             margin-right: 10px;
             border-right: 1px solid #ccc; /* Add margin line */
             padding-right: 20px;
         }

         /* Align "Loans to Pay" to the left and "Loans to Receive" to the right */
               .section-left {
                 width: 45%;
                 float: left;
                 margin-right: 10px;
                 border-right: 1px solid #ccc; /* Add margin line */
                 padding-right: 20px;
                 background-color: rgba(255, 255, 255, 0.8);
                 border-radius: 20px;
                 box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                 text-align: center; /* Align text to center */
             }

             .section-right {
                 width: 45%;
                 float: right;
                 margin-right: 10px;
                 border-right: 1px solid #ccc; /* Add margin line */
                 padding-right: 20px;
                 background-color: rgba(255, 255, 255, 0.8);
                 border-radius: 20px;
                 box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                 text-align: center; /* Align text to center */
             }


             button[type="button"] {
               display: block;
               width: 5%;
               float: right;
               padding: 5px;
               background-color: blue;
               color: black;
               border: none;
               border-radius: 3px;
               cursor: pointer;
               text-align: center;
           }

           button[type="button"]:hover {
               background-color: #0056b3;
               color: white;
           }

          .login-button {
             background-color: #007bff;
             color: white;
          }

</style>
</head>
    <body>
              <div class="header">
                  <!-- Use buttons for Login and Register -->
                  <button type="button" class="login-button"><a href="login.jsp">Login</a></button> |
                  <button type="button"><a href="register.jsp">Register</a></button>
              </div>


      <h1>Welcome, Srikanth!</h1>

      <div class="section section-left">
          <h2>Loans to Pay</h2>
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

      <div class="section section-right">
          <h2>Loans to Receive</h2>
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
