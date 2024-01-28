<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Two Numbers</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Add Two Numbers</h2>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
            <div class="form-group">
                <label for="number1">Number 1:</label>
                <input type="number" class="form-control" id="number1" name="number1" required>
            </div>
            <div class="form-group">
                <label for="number2">Number 2:</label>
                <input type="number" class="form-control" id="number2" name="number2" required>
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>

        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $num1 = $_POST["number1"];
            $num2 = $_POST["number2"];
            $sum = $num1 + $num2;
            echo "<p class='mt-3'>Sum: " . $sum . "</p>";
        }
        ?>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
