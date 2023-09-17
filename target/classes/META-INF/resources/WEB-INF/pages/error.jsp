<%@ page language="java"
contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #e74c3c;
            color: #fff;
            padding: 20px;
            margin: 0;
        }
        .container {
            max-width: 1300px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
        }
         .button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        /* Hover effect */
        .button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Error Page</h1>
    <div class="container">
        <table>
            <tr>
                <th>Date</th>
                <td>${timestamp}</td>
            </tr>
            <tr>
                <th>Error</th>
                <td>${error}</td>
            </tr>
            <tr>
                <th>Status</th>
                <td>${status}</td>
            </tr>
            <tr>
                <th>Message</th>
                <td>${message}</td>
            </tr>
            <tr>
                <th>Probable Reason</th>
                <td>Hitting Back button (web browser) or double clicking Next button multiple times for single question  while attempting the quiz </td>
            </tr>
            <tr>
                <th>Solution</th>
                <td><button class="button" onclick="navigateToShowQuizListToUser()">Go to Dashboard</button></td>
            </tr>
            <tr>
                <th>Trace</th>
                <td>
                    <pre>${trace}</pre>
                </td>
            </tr>
        </table>
    </div>
 <script>
        function navigateToShowQuizListToUser() {
            window.location.href = '/showQuizListToUser?error=IndexOutOfBoundsException';
        }
</script>       
</body>
</html>
