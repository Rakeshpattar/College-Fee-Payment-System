<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Fee Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #1f4037, #99f2c8);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
            padding: 0;
            color: #212529;
        }

        .container {
            flex: 1;
        }

        .card {
            border: none;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            animation: fadeInUp 0.5s ease;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .card-header {
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            color: #fff;
            padding: 1rem 1.25rem;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }

        .card-header h4 {
            margin: 0;
            font-weight: 600;
        }

        .form-label {
            font-weight: 500;
            margin-bottom: 6px;
        }

        .form-control,
        .form-select {
            border-radius: 10px;
            padding: 10px 12px;
            font-size: 0.95rem;
            transition: 0.2s ease-in-out;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #ff4b2b;
            box-shadow: 0 0 0 0.2rem rgba(255, 75, 43, 0.25);
        }

        .btn-success {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            border: none;
            border-radius: 10px;
            padding: 10px 24px;
            font-weight: 600;
            font-size: 0.95rem;
            color: #fff;
            transition: 0.3s ease;
        }

        .btn-success:hover {
            background: linear-gradient(to right, #00b5f5, #0057e7);
        }

        .btn-secondary {
            background: #f1f1f1;
            color: #333;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px 24px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: background 0.3s ease;
        }

        .btn-secondary:hover {
            background-color: #e0e0e0;
        }

        .navbar-brand i {
            margin-right: 10px;
        }

        footer {
            background-color: #212529;
            color: white;
            text-align: center;
            padding: 16px 0;
            margin-top: auto;
            font-size: 14px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
            <i class="fas fa-graduation-cap"></i> College Fee Management
        </a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link" href="index.jsp">Home</a>
            <a class="nav-link" href="DisplayFeePaymentsServlet">View Payments</a>
            <a class="nav-link" href="report_form.jsp">Reports</a>
        </div>
    </div>
</nav>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4><i class="fas fa-plus-circle"></i> Add New Fee Payment</h4>
                </div>
                <div class="card-body">
                    <% if (request.getParameter("error") != null) { %>
                    <div class="alert alert-danger" role="alert">
                        <%= request.getParameter("error") %>
                    </div>
                    <% } %>

                    <form action="AddFeePaymentServlet" method="post">
                        <div class="mb-3">
                            <label for="studentId" class="form-label">Student ID</label>
                            <input type="number" class="form-control" id="studentId" name="studentId" required>
                        </div>
                        <div class="mb-3">
                            <label for="studentName" class="form-label">Student Name</label>
                            <input type="text" class="form-control" id="studentName" name="studentName" required>
                        </div>
                        <div class="mb-3">
                            <label for="paymentDate" class="form-label">Payment Date</label>
                            <input type="date" class="form-control" id="paymentDate" name="paymentDate" required>
                        </div>
                        <div class="mb-3">
                            <label for="amount" class="form-label">Amount</label>
                            <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
                        </div>
                        <div class="mb-3">
                            <label for="status" class="form-label">Status</label>
                            <select class="form-select" id="status" name="status" required>
                                <option value="">Select Status</option>
                                <option value="Paid">Paid</option>
                                <option value="Overdue">Overdue</option>
                                <option value="Pending">Pending</option>
                            </select>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href="DisplayFeePaymentsServlet" class="btn btn-secondary me-md-2">Cancel</a>
                            <button type="submit" class="btn btn-success">Add Payment</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    &copy; <%= java.time.Year.now() %> College Fee Management System
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
